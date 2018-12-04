#!/usr/bin/env python

import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import *
from dynamixel_controllers.srv import SetSpeed
from polagraphe.srv import *
from math import pi

class motor_cmd():

    alarm = False

    def __init__(self):
        
        rospy.init_node('motor_cmd', anonymous=True)
        rospy.Service('motor_pola', Turn, self.turn_calcul)
        self.serv_veloR = rospy.ServiceProxy('/motor1/set_speed',SetSpeed)
        self.serv_veloL = rospy.ServiceProxy('/motor2/set_speed',SetSpeed)
        rospy.Subscriber('/alarm', Bool, self.alarm_callback)
        rospy.spin()


    def alarm_callback(self,data):
        self.alarm = data.data
        if data.data:
            rospy.loginfo("bouge ton boule!\n")


    def turn_calcul(self,data):

        rate = rospy.Rate(1)
        self.serv_veloL(4)
        self.serv_veloR(4)
        rate.sleep()
        self.serv_veloL(0.0)
        self.serv_veloR(0.0)

        return True

if __name__ == "__main__":
        l=motor_cmd()