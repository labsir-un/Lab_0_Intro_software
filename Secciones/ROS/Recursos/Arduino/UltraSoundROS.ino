/*
 * rosserial Publisher para ultrasonido
 * Verifique puertos y librerías
 */

#include <ros.h>
#include <std_msgs/String.h>

const int Trigger = 12;   // Pin digital 2 para el Trigger del sensor
const int Echo = 11;      // Pin digital 3 para el Echo del sensor

ros::NodeHandle nh;

std_msgs::String str_msg;
ros::Publisher UltraSound("UltraSound", &str_msg);

unsigned long previousMillis = 0;
const long interval = 100; // Intervalo de 100 ms

void setup() {
  pinMode(Trigger, OUTPUT); // Pin como salida
  pinMode(Echo, INPUT);     // Pin como entrada
  digitalWrite(Trigger, LOW); // Inicializamos el pin con 0

  nh.initNode();
  nh.advertise(UltraSound);
}

void loop() {
  unsigned long currentMillis = millis();

  if (currentMillis - previousMillis >= interval) {
    previousMillis = currentMillis;

    // Medición de distancia
    digitalWrite(Trigger, HIGH);
    delayMicroseconds(10);
    digitalWrite(Trigger, LOW);

    long t = pulseIn(Echo, HIGH); // Tiempo en microsegundos
    long d = t / 59;              // Distancia en cm

    char buffer[20];
    snprintf(buffer, sizeof(buffer), "Distancia: %ld cm", d);
    str_msg.data = buffer;
    UltraSound.publish(&str_msg);

    nh.spinOnce();
  }
}

