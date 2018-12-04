#!/usr/bin/env python

import rospy
from math import sqrt
from std_msgs.msg import *
from dynamixel_controllers.srv import SetSpeed
from polagraphe.srv import *
from math import pi

class distance_tr():

    w = 1.3
    l = 0.8

    x0 = 0.65
    y0 = 0.0
    x = 0
    y = 0

    a0 = sqrt(x0*x0+(l-y0)*(l-y0))
    b0 = sqrt((w-x0)*(w-x0)+(l-y0)*(l-y0))
    a = 0
    b = 0

    D_poulie = 0.024

    Tr_R = 0
    Tr_L = 0


    def __init__(self):

        rospy.init_node('distance_tr', anonymous=True)
        rospy.Service('distance_pola', Coordonee, self.turn_calcul)
        self.call_turn = rospy.ServiceProxy('motor_pola',Turn)
        rospy.wait_for_service('motor_pola')
        rospy.spin()

    def turn_calcul(self,data):

        self.x = data.x
        self.y = data.y

        print "x : ",self.x
        print "y : ",self.y

        self.a = sqrt(self.x*self.x+(self.l-self.y)*(self.l-self.y))
        self.b = sqrt((self.w-self.x)*(self.w-self.x)+(self.l-self.y)*(self.l-self.y))
        print "a0 : ",self.a0
        print "b0 : ",self.b0

        print "a : ",self.a
        print "b : ",self.b

        self.Tr_L = (-self.a+self.a0)/(2*pi*self.D_poulie)
        self.Tr_R = (-self.b+self.b0)/(2*pi*self.D_poulie)

                
        self.a0 = self.a
        self.b0 = self.b

        print "tour gauche : ",self.Tr_L
        print "tour droite : ",self.Tr_R
        
        bool1 = self.call_turn(self.Tr_L, self.Tr_R).success

        return bool1

if __name__ == "__main__":
    l=distance_tr()