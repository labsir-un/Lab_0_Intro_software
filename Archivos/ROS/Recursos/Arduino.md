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

 - Conocer el proceso de instalación de ROS y la adquisición de datos desde diferentes sensores a través de este entorno.

 - Programar rutinas en Python para la lectura, procesamiento y análisis de los datos provenientes de sensores.

## 1. 🧰 Herramientas Necesarias

### 1.1. 🔭🛠️ Equipos

  - Computador.
  - Arduino UNO con cable USB-B.
  - Sensor IMU GY–85.

### 1.2. 🖥️💾 Software

  - Ubuntu 20.04
  - Arduino IDE
  - ROS



