#!/usr/bin/env python3

import rospy
from std_msgs.msg import String

def talker():

    #Se inicializa el nodo
    rospy.init_node('talker', anonymous=True)
    #Se inicializa el publisher
    pub = rospy.Publisher('chatter', String, queue_size=10)

    #Se inicializa el rate
    rate = rospy.Rate(10) # 10hz

    while not rospy.is_shutdown():
        #Se crea el mensaje
        #Se obtiene el tiempo actual
        hello_str = "hello world %s" % rospy.get_time()

        #Se publica el mensaje 
        #Se imprime el mensaje en la consola
        #Se publica el mensaje en el topic chatter
        rospy.loginfo(hello_str)
        pub.publish(hello_str)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass