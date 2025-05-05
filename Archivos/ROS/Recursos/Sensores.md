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
  - RPLidar A1.
  - Camara web.
  - Hokuyo URG-04LX-UG01.

### 1.2. 🖥️💾 Software

  - Ubuntu 20.04.
  - Arduino IDE.
  - ROS Noetic.


## 4. 🔧➡️🚀 Procedimiento
