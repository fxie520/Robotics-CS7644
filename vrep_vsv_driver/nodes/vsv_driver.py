#!/usr/bin/env python3
import roslib; roslib.load_manifest('vrep_vsv_driver')
import rospy
from std_msgs.msg import Float64
from sensor_msgs.msg import JointState
from geometry_msgs.msg import Twist,Pose
from math import atan2, hypot, pi, cos, sin
import tf
import message_filters

from vrep_vsv_driver.vsv_kinematics import *


class VSVDriver:
    def __init__(self,name):
        self.name = name
        rospy.init_node('vsv_driver')
        self.name = rospy.get_param("~vsv_name",self.name)
        self.min_radius = rospy.get_param("~min_radius",5.0)
        self.check_timeout = rospy.get_param("~check_timeout",True)
        rospy.loginfo("Starting vsv driver for vsv '%s'" % self.name)
        self.last_cmd = rospy.Time.now()
        self.listener = tf.TransformListener()
        self.steering_pub={}
        self.drive_pub={}
        self.ready = False

        self.kinematics = VSVKinematics(self.min_radius)

        self.twist_sub = rospy.Subscriber('~twistCommand', Twist, self.twist_cb)
        # print "Initialising wheel data structure"
        for k in prefix:
            if k in steer_prefix:
                self.steering_pub[k] = rospy.Publisher("/%s/%sSteer/command" % (self.name,k), Float64, queue_size=1)
            self.drive_pub[k] = rospy.Publisher("/%s/%sDrive/command" % (self.name,k), Float64, queue_size=1)


    def twist_cb(self,twist):
        if not self.ready:
            return
        # print "Got twist: " + str(twist)
        self.last_cmd = rospy.Time.now()
        # Get the pose of all drives
        drive_cfg={}
        for k in prefix:
            # try:
                # self.listener.waitForTransform('/%s/ground'%(self.name),
                #         '/%s/%sDrive'%(self.name,k), self.last_cmd, rospy.Duration(1.0))
                ((x,y,z),rot) = self.listener.lookupTransform('/%s/ground'%(self.name),
                        '/%s/%sDrive'%(self.name,k), rospy.Time(0))
                drive_cfg[k] = DriveConfiguration(self.radius[k],x,y,z)
            # except (tf.LookupException, tf.ConnectivityException, tf.ExtrapolationException):
            #    return
        # Now compute for each drive, its rotation speed and steering angle
        motors = self.kinematics.twist_to_motors(twist,drive_cfg)
        self.publish(motors)

    def publish(self, motor):
        for k in prefix:
            self.drive_pub[k].publish(Float64(motor.drive[k]))
            if k in steer_prefix:
                self.steering_pub[k].publish(Float64(motor.steering[k]))
            

    def run(self):
        timeout = True
        rate = rospy.Rate(10)
        rospy.loginfo("Waiting for initial transforms")
        rospy.sleep(1.0)
        self.radius={}
        for k in prefix:
            try:
                self.listener.waitForTransform('/%s/ground'%(self.name),
                        '/%s/%sDrive'%(self.name,k), rospy.Time(0), rospy.Duration(5.0))
                ((x,y,z),rot) = self.listener.lookupTransform('/%s/ground'%(self.name),
                        '/%s/%sDrive'%(self.name,k), rospy.Time(0))
                self.radius[k] = z
                rospy.loginfo("Got transform for " + k)
            except tf.Exception as e:
                rospy.logerr("TF exception: " + repr(e))
        self.ready = True
        rospy.loginfo("VSV Driver: We're ready")
        while not rospy.is_shutdown():
            if self.check_timeout:
                if (rospy.rostime.get_time() - self.last_cmd.to_sec()) < 0.5: 
                    if timeout:
                        timeout = False
                        rospy.loginfo("Accepting joystick commands")
                else:
                    if not timeout:
                        timeout = True
                        rospy.loginfo("Timeout: ignoring joystick commands")
                    motors = VSVMotors()
                    self.publish(motors)
            rate.sleep()


if __name__ == '__main__':
    try:
        rd = VSVDriver("vsv") 
        rd.run()
    except rospy.ROSInterruptException:
        pass
