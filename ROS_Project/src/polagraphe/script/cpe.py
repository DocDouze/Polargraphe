#!/usr/bin/env python

import rospy
from math import sqrt
from std_msgs.msg import *
from dynamixel_controllers.srv import SetSpeed
from polagraphe.srv import *
from math import pi
from std_msgs.msg import Float64MultiArray

class distance_tr():
    
    
    def __init__(self):

        rospy.init_node('CPE', anonymous=True)
        self.call_turn = rospy.ServiceProxy('motor_pola',Turn)
        rospy.Subscriber("/motor_cmd", Float64MultiArray , self.callback)

    
    def callback(self,data):
    self.call_turn(data.data[0],data.data[1])
        print "test"
        pass


if __name__ == "__main__":
    l=distance_tr()
    rospy.wait_for_service('motor_pola')
    
    rospy.spin()