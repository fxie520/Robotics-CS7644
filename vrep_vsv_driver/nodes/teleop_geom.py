#!/usr/bin/env python3
import roslib; roslib.load_manifest('vrep_vsv_driver')
import rospy
import copy
from sensor_msgs.msg import Joy
from geometry_msgs.msg import Twist, Point
from std_msgs.msg import Float32
from math import pi,sqrt
import tf
from tf.transformations import euler_from_quaternion

from vrep_vsv_driver.arm_ik import *

class TeleopIK:
    def __init__(self):
        self.last_joy = -1e10
        self.joy_value = None

        rospy.init_node('vrep_ros_teleop')
        self.sub = rospy.Subscriber('~joy', Joy, self.joy_cb)
        self.twist_pub = rospy.Publisher('~twist_command', Twist, queue_size=1)
        self.pose_pub = rospy.Publisher('~position_command', Point, queue_size=1)
        self.tool_pub = rospy.Publisher('~tool_command', Float32, queue_size=1)
        self.axis_arm_x = rospy.get_param("~axis_arm_x",3)
        self.axis_arm_y = rospy.get_param("~axis_arm_y",6)
        self.axis_arm_z = rospy.get_param("~axis_arm_z",4)
        self.arm_step = rospy.get_param("~arm_velocity",0.1)
        self.home_button = rospy.get_param("~home_button",1)
        self.ready_button = rospy.get_param("~ready_button",0)
        self.move_button = rospy.get_param("~move_button",2)

    def joy_cb(self,value):
        self.last_joy = rospy.rostime.get_time()
        self.joy_value = value

    def run(self):
        timeout = True
        rate = rospy.Rate(10)
        state = "Ready"
        while not rospy.is_shutdown():
            if (rospy.rostime.get_time() - self.last_joy) < 0.5: 
                if timeout:
                    timeout = False
                    rospy.loginfo("Teleop Geom: Accepting joystick commands")
                if (state == "Homing") or (self.joy_value.buttons[self.home_button]):
                    if state != "Homing":
                        rospy.loginfo("Homing");
                    state = "Homing"
                    self.tool_pub.publish(Float32(0.0))
                    self.pose_pub.publish(Point(0.8,0.0,0.3))
                if (state == "Ready") or (self.joy_value.buttons[self.ready_button]):
                    if state != "Ready":
                        rospy.loginfo("Getting ready");
                    state = "Ready"
                    self.tool_pub.publish(Float32(-pi/2))
                    self.pose_pub.publish(Point(2.0,0.0,-0.5))
                if (state == "Default") or (self.joy_value.buttons[self.move_button]):
                    state = "Default"
                    twist = Twist()
                    twist.linear.x = -self.joy_value.axes[self.axis_arm_x]*self.arm_step
                    twist.linear.y = self.joy_value.axes[self.axis_arm_y]*self.arm_step
                    twist.linear.z = self.joy_value.axes[self.axis_arm_z]*self.arm_step
                    self.tool_pub.publish(Float32(-pi/2))
                    self.twist_pub.publish(twist)
            else:
                if not timeout:
                    timeout = True
                    rospy.loginfo("Teleop Geom: Timeout: ignoring joystick commands")
                    twist = Twist()
                    self.twist_pub.publish(twist)
            rate.sleep()


if __name__ == '__main__':
    try:
        teleop = TeleopIK()
        teleop.run()
        
    except rospy.ROSInterruptException:
        pass
