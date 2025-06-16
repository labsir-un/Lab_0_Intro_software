<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de Software</h1>

<h2>Instalación Nativa de Ubuntu</h2>

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
- [2. 🧰 Herramientas Necesarias](#2--herramientas-necesarias)
  - [2.1. 🔭🛠️ Equipos](#21-️-equipos)
  - [2.2. 🖥️💾 Software](#22-️-software)
- [3. 🔧➡️🚀 Procedimiento](#3-️-procedimiento)
  - [3.1. 🚀💽 Creación de Unidad Booteable](#31--creación-de-unidad-booteable)
  - [3.2. 💻🔀🖥 Dual Boot de Windows 10 y Ubuntu 20.04](#32--dual-boot-de-windows-10-y-ubuntu-2004)
- [4. 📚🗄️ Referencias](#4-️-referencias)
</details>

---

<h1> 🖥️💾 Guía 0 - Instalación de Ubuntu Nativo</h1>

## 1. 📖 Introducción

Ubuntu es una de las distribuciones de Linux más utilizadas en el ámbito del desarrollo, la robótica y la simulación debido a su estabilidad, compatibilidad con herramientas de código abierto y su amplio soporte por parte de la comunidad. Ejecutarlo de manera nativa permite aprovechar al máximo los recursos del sistema, garantizando un mejor rendimiento en aplicaciones exigentes. Además, al evitar las capas de virtualización o compatibilidad, se obtiene una integración más eficiente con el hardware, facilitando la comunicación con periféricos y sensores en tiempo real.

Para herramientas como ROS (Robot Operating System) y CoppeliaSim, el uso de Ubuntu nativo es altamente recomendable, ya que ambas aplicaciones están diseñadas específicamente para Linux y tienen un soporte optimizado en esta plataforma. ROS requiere una ejecución en tiempo real para la gestión de nodos y la comunicación entre componentes del sistema robótico, mientras que CoppeliaSim, al ser un software de simulación 3D, se beneficia del acceso directo a los recursos gráficos y computacionales. Al ejecutar estos programas en Ubuntu nativo, se reducen problemas de compatibilidad, latencia y rendimiento, permitiendo un flujo de trabajo más eficiente en el desarrollo y prueba de algoritmos de robótica.

## 2. 🧰 Herramientas Necesarias

### 2.1. 🔭🛠️ Equipos

  - Computador.
  - USB (mínimo 4GB). 

### 2.2. 🖥️💾 Software

  - [ISO Ubuntu 20.04](https://releases.ubuntu.com/focal/)
  - [balenaEtcher 2.1.0](https://etcher.balena.io/#download-etcher)

## 3. 🔧➡️🚀 Procedimiento 

### 3.1. 🚀💽 Creación de Unidad Booteable

Para la instalación de un sistema Ubuntu nativo, es necesario crear una unidad booteable con la cual se instalará el sistema.

>[!TIP]
>Se recomienda usar una USB de 8GB, aunque el mínimo necesario es de 4GB, lo cual puede ser insuficiente para la creación de la unidad.

>[!WARNING]
>Asegúrate de que la USB no contenga archivos importantes, ya que el primer paso en la creación de la unidad booteable será formatearla.

1. Descarga la imagen ISO desde la página de [Ubuntu 20.04](https://releases.ubuntu.com/focal/) y el programa [balenaEtcher](https://etcher.balena.io/#download-etcher).
   
2. Una vez descargada la imagen ISO e instalado balenaEtcher, ejecuta el programa.
   
>[!NOTE]
>Conecta la USB a tu equipo antes de continuar.

3. En balenaEtcher, selecciona la opción *"Flash from file"*, que permite cargar un archivo ISO. Selecciona la imagen ISO de Ubuntu.
   
<div align="center">
  <img src="https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExNXppaGcxejNjNWtqdXM2YXV5Y2FtYjJlZHQzbGlremFleWI5dHBkcSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/XOzLOItwt8JwrhQ1CY/giphy.gif" alt="Paso_3" width="600px">
</div>

4. En la opción *"Select target"*, elige la unidad USB que se usará como unidad booteable.
   
>[!CAUTION]
>Verifica que sea la unidad correcta, ya que el programa la formateará antes de proceder.

<div align="center">
  <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExa24wN2x5YzM2OHRscWlpN2gxcmZldWIwYTBqYjJqeTkxZHNmNGczNCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/iKFuyyZEJeytz8XOlF/giphy.gif" alt="Paso_4" width="600px">
</div>

5. Finalmente, haz *click* en *"Flash"* para comenzar la creación de la unidad booteable. El proceso tarda aproximadamente 15 minutos. Cuando aparezca el mensaje *"Flash completed"*, podrás expulsar la USB y estará lista para su uso.

<div align="center">
  <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExeTd5a3lnazZleXoybmZocHJhZmVkbGV3eXd5MWg1MTU2MnQ3dzlnaSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/AHTY6FiUDJftNcSO3Q/giphy.gif" alt="Paso_5"  width="600px">
</div>

### 3.2. 💻🔀🖥 Dual Boot de Windows 10 y Ubuntu 20.04

<div align="center">
  <a href="https://www.youtube.com/watch?v=eD_7IscuWhM">
    <img src="https://img.youtube.com/vi/eD_7IscuWhM/0.jpg" alt="video dual boot Ubuntu"  width="600px">
  </a>
</div>

## 4. 📚🗄️ Referencias

**[1]** N. Portela, "Instalación de Ubuntu 20.04 y Windows 10 en un SSD y HDD", 2021. [Online]. Available: [https://www.youtube.com/watch?v=eD_7IscuWhM](https://www.youtube.com/watch?v=eD_7IscuWhM)

