<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de Software</h1>

<h2>Uso de sensores con ROS</h2>

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
  - [📹🎢🎭 Camára web](#-camára-web)
  - [🔦👀🌍📡 Sensor RPLidar](#-sensor-rplidar)
  - [🔦👀🌐🔭 Sensor Hokuyo](#-sensor-hokuyo)

</details>

---

<h1>👀🌐🤖 Uso de sensores con ROS</h1>

## 1. 📖 Introducción

El Robot Operating System (ROS) es un marco flexible para el desarrollo de software de robótica que proporciona herramientas, bibliotecas y convenciones para crear sistemas robóticos complejos. Uno de los aspectos fundamentales en el desarrollo de robots es la integración y manejo de sensores, los cuales permiten que el robot perciba su entorno, tome decisiones informadas y actúe en consecuencia.

ROS facilita el manejo de sensores mediante una arquitectura basada en nodos, mensajes y temas (topics). Cada sensor puede estar conectado a un nodo específico que publica datos en un topic determinado. Estos datos se estructuran en mensajes estándar o personalizados, dependiendo del tipo de sensor (por ejemplo, imágenes, datos de profundidad, posiciones, velocidades, etc.).

Entre los sensores más comunes integrados con ROS se encuentran:

Sensores de distancia (como LIDAR o ultrasonido)

Cámaras (RGB, RGB-D, estéreo)

IMUs (Unidades de Medición Inercial)

Encoders y potenciómetros

Sensores de temperatura, humedad, gas, etc.

ROS proporciona paquetes específicos para muchos sensores populares, lo que permite su rápida integración. Por ejemplo, `realsense2_camera` para cámaras Intel RealSense, `rplidar_ros` para sensores LIDAR, o `rosserial` para integrar sensores conectados a microcontroladores como Arduino.

Además, herramientas como RViz permiten visualizar en tiempo real la información proveniente de los sensores, mientras que rosbag permite grabar y reproducir datos sensoriales para análisis posterior.

En resumen, ROS ofrece una infraestructura robusta y estandarizada para el manejo de sensores, permitiendo a los desarrolladores centrarse en el diseño de comportamientos inteligentes sin preocuparse excesivamente por los detalles de bajo nivel de adquisición y sincronización de datos.

## 2. 🎯 Objetivos

 - Conocer el proceso de la adquisición de datos desde diferentes sensores a través de este entorno.

 - Programar rutinas en Python para la lectura, procesamiento y análisis de los datos provenientes de sensores.

## 1. 🧰 Herramientas Necesarias

### 1.1. 🔭🛠️ Equipos

  - Computador.
  - RPLidar.
  - Cámara web.
  - Hokuyo URG-04LX-UG01.

### 1.2. 🖥️💾 Software

  - Ubuntu 20.04.
  - Arduino IDE.
  - ROS Noetic.


## 4. 🔧➡️🚀 Procedimiento


### 📹🎢🎭 Camára web

El uso de una cámara web ofrece una solución accesible y versátil para tareas de percepción visual. Gracias a su bajo costo, facilidad de integración y compatibilidad con bibliotecas como OpenCV, una cámara web permite capturar imágenes en tiempo real que pueden emplearse en aplicaciones como detección de objetos, seguimiento de movimiento y navegación autónoma. Además, su uso en conjunto con ROS facilita el procesamiento distribuido de imágenes, la publicación de datos en tópicos y la integración con otros sensores y nodos del sistema robótico, lo que contribuye al desarrollo de soluciones más completas y eficientes.

1. Instale el paquete para el uso de la cámara web con ROS y el visualizador de rqt.

```sh
sudo apt install ros-noetic-usb-cam
sudo apt install ros-noetic-rqt-image-view
```

2. Corra el nodo de la cámara web.

```sh
rosrun usb_cam usb_cam_node
```

3. Use el comando de `rostopic list` para ver que los topicos disponibles.

4. Poniendo un `sniffer` en el topico `/usb_cam/image_raw` podra ver la matriz con los datos de las imagenes que se estan sensando.

```sh
 rostopic echo /usb_cam/image_raw
```

5. Visualice la imagen que se esta sensando con rqt.

```sh
rqt_image_view
```

6. Instale las librerias y paquete de opencv.

```sh
sudo apt install ros-noetic-cv-bridge python3-opencv
```

7. Agregue a su workspace el script [image_detector.py](./scripts/image_detector.py) con el cual podra ver un ejemplo de detección de imagenes sencillo usando OpenCV.

### 🔦👀🌍📡 Sensor RPLidar


1. En la carpeta `src` de su workspace clone el paquete del RPLidar.

```sh
~/catkin_ws/src/
git clone https://github.com/robopeak/rplidar_ros.git
```

2. Compile el workspace y cargue las variables de entorno.

```sh
~/catkin_ws/
catkin_make
source devel/setup.bash 
```

3. Verifique en que puerto esta conectado el sensor y deje los permisos adecuados de escritura.

```sh
ls -l /dev |grep ttyUSB
#En esete caso el puerto es el /dev/ttyUSB0
sudo chmod 666 /dev/ttyUSB0
```

4. Visualice los datos obtenidos por el sensor usando el .launch para rviz.

```sh
roslaunch rplidar_ros view_rplidar.launch
```

5. Si desea visualizar los datos en la terminal en dupla ángulo y distancia puede usar el .launch de solo el sensor y conectarse a sus datos.

```sh
roslaunch rplidar_ros rplidar.launch
#Lance en una segunda terminal el nodo
rosrun rplidar_ros rplidarNodeClient
```

### 🔦👀🌐🔭 Sensor Hokuyo

1. Intale el paquete para el sensor.

```sh
sudo apt-get install ros-noetic-urg-node
```

2. Corra el nodo para el sensor.

```sh
rosrun urg_node urg_node
```

3. Ejecute rviz, en la escena configure en `Global Options el Fixed Frame a laser` y añada un `LaserScan` cuyo topico sea `/scan`. 

```sh
rosrun rviz rviz
```