#!/usr/bin/env python3

import rospy
from sensor_msgs.msg import Image
from cv_bridge import CvBridge
import cv2

class ImageDetector:
    def __init__(self):
        rospy.init_node('image_detector', anonymous=True)
        self.bridge = CvBridge()
        rospy.Subscriber("/usb_cam/image_raw", Image, self.callback)

        # Sustractor de fondo para detectar movimiento
        self.back_sub = cv2.createBackgroundSubtractorMOG2(history=100, varThreshold=50, detectShadows=True)

        rospy.loginfo("Nodo de detección de imagen con contornos y movimiento iniciado.")
        rospy.spin()

    def callback(self, msg):
        try:
            # Convertir mensaje a imagen OpenCV
            frame = self.bridge.imgmsg_to_cv2(msg, desired_encoding='bgr8')

            # ---------- Parte 1: detección de contornos en grises ----------
            gray = cv2.cvtColor(frame, cv2.COLOR_BGR2GRAY)
            _, thresh = cv2.threshold(gray, 100, 255, cv2.THRESH_BINARY)
            contours, _ = cv2.findContours(thresh, cv2.RETR_TREE, cv2.CHAIN_APPROX_SIMPLE)

            # Dibujar contornos sobre la imagen original
            frame_contours = frame.copy()
            cv2.drawContours(frame_contours, contours, -1, (0, 255, 0), 2)

            # ---------- Parte 2: máscara de movimiento ----------
            fg_mask = self.back_sub.apply(frame)
            kernel = cv2.getStructuringElement(cv2.MORPH_ELLIPSE, (5, 5))
            fg_mask = cv2.morphologyEx(fg_mask, cv2.MORPH_OPEN, kernel)

            # ---------- Mostrar resultados ----------
            cv2.imshow("Contornos en Imagen", frame_contours)
            cv2.imshow("Máscara de Movimiento", fg_mask)
            cv2.waitKey(1)

        except Exception as e:
            rospy.logerr("Error procesando la imagen: %s", str(e))

if __name__ == "__main__":
    try:
        ImageDetector()
    except rospy.ROSInterruptException:
        pass
