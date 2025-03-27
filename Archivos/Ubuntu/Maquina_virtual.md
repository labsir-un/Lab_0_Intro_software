<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robotica Movil</h3>

<h1>Herramientas de software</h1>

<h2>Ubuntu usando una máquina virtual</h2>


<h5>Pedro F. Cárdenas<br>
    Ricardo Ramirez<br>
    Juan S. Daleman</h5>

<h6>Universidad Nacional de Colombia<br>
    Facultad de Ingenería<br>
    Departamento de Ingeneria Mécanica y Mecatrónica<br>
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
  - [3.1. 🖥️💿➡️📦🔧 Intalación de maquina virtual.](#31-️️-intalación-de-maquina-virtual)
  - [3.2. 🖥️📦➡️🐧🔧 Intalación de ubuntu en la maquina virtual.](#32-️️-intalación-de-ubuntu-en-la-maquina-virtual)
- [4. 📚🗄️ Referencias](#4-️-referencias)
</details>

---

<h1> 🖥️💾 Guía 0 - Uso de máquina virtual</h1>

## 1. 📖 Introducción

El uso de máquinas virtuales para ejecutar Linux ofrece una solución flexible y eficiente para probar, desarrollar y desplegar software sin necesidad de modificar el sistema operativo principal. Una de sus principales ventajas es la capacidad de ejecutar múltiples entornos en un solo equipo, lo que permite a los usuarios experimentar con diferentes distribuciones de Linux, probar configuraciones y ejecutar aplicaciones de manera aislada. Además, las máquinas virtuales facilitan la creación de entornos de desarrollo consistentes, eliminando problemas de compatibilidad y asegurando que el software funcione de manera uniforme en distintas plataformas.

Otra ventaja significativa es la seguridad y la facilidad de administración que proporcionan. Al ejecutarse en un entorno aislado, una máquina virtual protege el sistema principal de posibles errores, configuraciones incorrectas o software malicioso. Esto resulta especialmente útil para probar nuevas herramientas o realizar tareas de aprendizaje sin riesgo de dañar el equipo anfitrión. Además, las máquinas virtuales permiten realizar copias de seguridad, restauraciones y clonaciones con facilidad, lo que agiliza la recuperación ante fallos y mejora la eficiencia en entornos de prueba y producción.



## 2. 🧰 Herramientas Necesarias

### 2.1. 🔭🛠️ Equipos

  - Computador.

### 2.2. 🖥️💾 Software

  - [ISO Ubuntu 20.04](https://releases.ubuntu.com/focal/)
  - [VMware Workstation 16.2.2.](https://www.vmware.com/products/desktop-hypervisor/workstation-and-fusion) (En caso de MAC la versión es la VMware Fusion)


## 3. 🔧➡️🚀 Procedimiento 

VMware es una de las principales plataformas de virtualización, reconocida por su capacidad para crear y administrar máquinas virtuales de manera eficiente en entornos empresariales y personales. Su tecnología permite ejecutar múltiples sistemas operativos en un solo hardware físico, optimizando recursos y facilitando la gestión de infraestructuras de TI. Con soluciones como VMware Workstation para usuarios individuales y VMware vSphere para centros de datos, esta plataforma ofrece herramientas avanzadas de virtualización, alta seguridad y opciones de escalabilidad, lo que la convierte en una opción ideal para pruebas de software, desarrollo, y administración de servidores en la nube o en entornos locales.

### 3.1. 🖥️💿➡️📦🔧 Intalación de maquina virtual.

1. Si no tienes [VMware Workstation 16.2.2.](https://www.vmware.com/products/desktop-hypervisor/workstation-and-fusion) lo descargaremos (para esto deberas crear una cuenta y aceptar los terminos para la descarga).

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExb2V3czRwbDBqZzdmNmlwOGE1NGNnZnJubGFzYjBieXBxaHhsdmgxcCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/lYPBgYVH3Fyn7L9O39/giphy.gif" alt="Instalacion" width="600px">
</div>

2. Abriremos el intalador, aceptaremos los terminos de instalación y daremos en *"Next"* hasta llegar a la ultima ventana donde daremos *"Install"*. Esperaremos que el proceso termine y daremos en *"finish"*.

<div align="center">
  <img src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExbGRuYXp2YXgxNHFkdjR5NHlpZjYzYWp3bzY2NGhoYThybG9seDA2diZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/G1QTxneDPw5wfBlSy7/giphy.gif" alt="Instalacion" width="600px">
</div>

### 3.2. 🖥️📦➡️🐧🔧 Intalación de ubuntu en la maquina virtual.

1. Cuando inicalice por primera vez el progrma solicitara el tipo de licencia usaremos la no comercial.

<div align="center">
  <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGR5ejFmZm91OTYxaWtqMnV2cjlxc3R6b2g0cmdocDB6NjJoaWJ6dyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/PCGxiS191T9XPBuwha/giphy.gif" alt="Instalacion" width="600px">
</div>

2. Seleccionar la opción *"Create a new virtual machine"* con lo cual iniciaremos el proceso y se abrira una nueva ventana. En esta solicitara agregar el archivo .iso de intalación. Luego saremos click en *"Next"*.

<div align="center">
  <img src="https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExdGQyaTJnbnJhOTBlOGV3MDZwOHl2NmZlaGRuaGtnYWh0djhtbDk5ZyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/a7jG0fEPlC5vGCLgcw/giphy.gif" alt="Instalacion_ISO" width="600px">
</div>

3. Nos solicitara cuales son las credenciales que deseamos para el sistema de Ubuntu. Luego solicitara las configuraciones para la maquina virtual como nombre y ubicación de los archivos de la maquina virtual, tamaño de disco, entre otras. Dejaremos por defecto estas configuraciones con una leve modificación con el tamaño del disco.

>[!NOTE]
>En este ejemplo usamos "Robotica_movil" pero puedes colocar las que desees. Asi mismo recuerda que el nombre de usuario solo puede estar en minusculas, usar caracteres alfanumericos y guines.

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExYnM5bmpjamFzeDBvcG5iOWQzYnB1a2tqaHpvbXUzMHVycnlwZ3YyZiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/7lFgp7TiY2tZzuqVFb/giphy.gif" alt="Instalacion_ISO" width="600px">
</div>

>[!TIP]
>Si tienes algun problema con la maquina virtual revisa las configuraciones a detalle.


## 4. 📚🗄️ Referencias

**[1]** P. Cardenas, "Intro_Ros", 2023. [Online]. Available: [https://github.com/PedroFCardenas/Intro_Ros](hhttps://github.com/PedroFCardenas/Intro_Ros)