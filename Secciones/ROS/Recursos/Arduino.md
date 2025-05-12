<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de Software</h1>

<h2>Uso de Arduino con ROS</h2>

<h5>Pedro F. Cárdenas<br>
    Ricardo Ramírez<br>
    Juan S. Daleman</h5>

<h6>Universidad Nacional de Colombia<br>
    Facultad de Ingeniería<br>
    Departamento de Ingeniería Mecánica y Mecatrónica<br>
    Bogotá, Colombia<br>
    2025</h6>
</div>

<details>
    <summary>🗂️ Tabla de Contenido</summary>

<!-- TOC -->
- [1. 📖 Introducción](#1--introducción)
- [2. 🎯 Objetivos](#2--objetivos)
- [1. 🧰 Herramientas Necesarias](#1--herramientas-necesarias)
  - [1.1. 🔭🛠️ Equipos](#11-️-equipos)
  - [1.2. 🖥️💾 Software](#12-️-software)
- [4. 🔧➡️🚀 Procedimiento](#4-️-procedimiento)
  - [🛠️🧑🏼‍💻🖥️ Configuración de arduino IDE](#️️-configuración-de-arduino-ide)
  - [⚙️🧰🚀 Prueba de configuración](#️-prueba-de-configuración)
  - [🔊📏🧱 Sensor HC-SR04](#-sensor-hc-sr04)

</details>

---

<h1>🤖🔌⚙️ Uso de Arduino con ROS</h1>

## 1. 📖 Introducción

El uso conjunto de Arduino con ROS (Robot Operating System) permite combinar la simplicidad del hardware embebido con el poder del software robótico avanzado. Arduino es una plataforma de hardware libre ampliamente utilizada para controlar sensores y actuadores de forma económica y directa. Por su parte, ROS proporciona una infraestructura robusta para el desarrollo de sistemas robóticos modulares y escalables.

Integrar Arduino con ROS permite a los desarrolladores:

 - Leer sensores (como ultrasónicos, encoders o IMUs) desde Arduino y enviar los datos a ROS.

 - Recibir comandos desde ROS para controlar motores, servos y otros actuadores a través del Arduino.

 - Desacoplar el procesamiento (en una computadora o SBC como Raspberry Pi) del control bajo nivel (Arduino), optimizando el diseño del sistema.

La herramienta más común para esta integración es el paquete `rosserial`, que permite una comunicación serial entre el Arduino y el ecosistema ROS, facilitando el intercambio de mensajes tipo `sensor_msgs`, `geometry_msgs` y otros tipos estándar del sistema.

Esta combinación es ideal para proyectos educativos, prototipado rápido, y robótica móvil, donde se busca un equilibrio entre simplicidad electrónica y potencia computacional.

## 2. 🎯 Objetivos

 - Comprender cómo establecer una comunicación serial entre una PC y un dispositivo Arduino utilizando ROS (Robot Operating System).

 - Manejo de datos de un sensor con un Arduino y ROS.

## 1. 🧰 Herramientas Necesarias

### 1.1. 🔭🛠️ Equipos

  - Computador.
  - Arduino UNO con cable USB-B.
  - Sensor IMU GY–521 o MPU-6050.
  - Sensor HC-SR04.

### 1.2. 🖥️💾 Software

  - Ubuntu 20.04.
  - Arduino IDE.
  - ROS Noetic.

## 4. 🔧➡️🚀 Procedimiento

### 🛠️🧑🏼‍💻🖥️ Configuración de arduino IDE

1. Instalé las librerías necesarias para utilizar la comunicación serial con Arduino.

```sh
sudo apt-get install ros-noetic-rosserial-arduino
sudo apt-get install ros-noetic-rosserial
```

2. Instalé `ros_lib` en el ambiente de Arduino.

```sh
# El directorio puede llamarse sketchbook o Arduino en el home virifique para saber cual es el nombre 
cd Arduino/libraries
rm -rf ros_lib
rosrun rosserial_arduino make_libraries.py .
```

3. Reinicie el IDE. Despues de esto deberia aparecer los ejemplos de la libreria.

<div align="center">
  <img src="https://imgur.com/PlxQC31.png" alt="Vista_ejemplos" width="600px">
</div>

### ⚙️🧰🚀 Prueba de configuración

1. Conecte el arduino y verifique el puerto de conexión. En el IDE podra verlo tambien.

```sh
lsusb
#Ver detalles de dispositivos conectados
dmesg | grep tty
```

2. Cargue en el programa `HelloWord`.

>[!WARNING]
>Si presenta problemas con el puerto serie asegurese de tener los permisos requeridos `sudo usermod -aG dialout $USER`,

3. Inicie el `roscore`.

4. Inicie el cliente de `rosserial` indicando el puero serial donde esta el arduino.

```sh
rosrun rosserial_python serial_node.py <puerto_arduiono>
```

5. Coloque el sniffer para el topico.

```sh
rostopic echo chatter
```

6. Cargue en el arduino el ejemplo `Blink`.

7. Inicie el cliente de `rosserial` indicando el puero serial donde esta el arduino.

```sh
rosrun rosserial_python serial_node.py <puerto_arduiono>
```

8. Publique en el topico.

```sh
rostopic pub toggle_led std_msgs/Empty --once
```

### 🔊📏🧱 Sensor HC-SR04

1. Haga las conexiones correspondientes. Tenga en cuenta los números de pines del ARDUINO a los cuales conectó los pines de trigger (pin 12) y de echo (pin 11) del HCSR04.

2. Cargue en el arduino el programa [UltraSoundROS.ino](./Arduino/UltraSoundROS.ino).

3. Ponga un sniffer en el topico `UltraSound`.

```
rostopic echo /UltraSound
```
<!--
### ↪️↩️📐 Sensor IMU GY–521 o MPU-6050


-->