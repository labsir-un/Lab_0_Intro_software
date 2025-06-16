<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de software</h1>

<h2>Ubuntu usando una máquina virtual</h2>

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
- [2. 🧰 Herramientas necesarias](#2--herramientas-necesarias)
  - [2.1. 🔭🛠️ Equipos](#21-️-equipos)
  - [2.2. 🖥️💾 Software](#22-️-software)
- [3. 🔧➡️🚀 Procedimiento](#3-️-procedimiento)
  - [3.1. 🖥️💿➡️📦🔧 Instalación de la máquina virtual](#31-️️-instalación-de-la-máquina-virtual)
  - [3.2. 🖥️📦➡️🐧🔧 Instalación de Ubuntu en la máquina virtual](#32-️️-instalación-de-ubuntu-en-la-máquina-virtual)
- [4. 📚🗄️ Referencias](#4-️-referencias)
</details>

---

<h1> 🖥️💾 Guía 0 - Uso de máquina virtual</h1>

## 1. 📖 Introducción

El uso de máquinas virtuales para ejecutar Linux ofrece una solución flexible y eficiente para probar, desarrollar y desplegar software sin necesidad de modificar el sistema operativo principal. Una de sus principales ventajas es la capacidad de ejecutar múltiples entornos en un solo equipo, lo que permite a los usuarios experimentar con diferentes distribuciones de Linux, probar configuraciones y ejecutar aplicaciones de manera aislada. Además, las máquinas virtuales facilitan la creación de entornos de desarrollo consistentes, eliminando problemas de compatibilidad y asegurando que el software funcione de manera uniforme en distintas plataformas.

Otra ventaja significativa es la seguridad y facilidad de administración que proporcionan. Al ejecutarse en un entorno aislado, una máquina virtual protege el sistema principal de posibles errores, configuraciones incorrectas o software malicioso. Esto resulta especialmente útil para probar nuevas herramientas o realizar tareas de aprendizaje sin riesgo de dañar el equipo anfitrión. Además, las máquinas virtuales permiten realizar copias de seguridad, restauraciones y clonaciones con facilidad, lo que agiliza la recuperación ante fallos y mejora la eficiencia en entornos de prueba y producción.

## 2. 🧰 Herramientas necesarias

### 2.1. 🔭🛠️ Equipos

  - Computador.

### 2.2. 🖥️💾 Software

  - [ISO Ubuntu 20.04](https://releases.ubuntu.com/focal/)
  - [VMware Workstation 16.2.2](https://www.vmware.com/products/desktop-hypervisor/workstation-and-fusion) (en el caso de Mac, la versión es VMware Fusion).

## 3. 🔧➡️🚀 Procedimiento 

VMware es una de las principales plataformas de virtualización, reconocida por su capacidad para crear y administrar máquinas virtuales de manera eficiente en entornos empresariales y personales. Su tecnología permite ejecutar múltiples sistemas operativos en un solo hardware físico, optimizando recursos y facilitando la gestión de infraestructuras de TI. Con soluciones como VMware Workstation para usuarios individuales y VMware vSphere para centros de datos, esta plataforma ofrece herramientas avanzadas de virtualización, alta seguridad y opciones de escalabilidad, lo que la convierte en una opción ideal para pruebas de software, desarrollo y administración de servidores en la nube o en entornos locales.

### 3.1. 🖥️💿➡️📦🔧 Instalación de la máquina virtual

1. Si no tienes [VMware Workstation 16.2.2](https://www.vmware.com/products/desktop-hypervisor/workstation-and-fusion), descárgalo (para ello deberás crear una cuenta y aceptar los términos de descarga).

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExb2V3czRwbDBqZzdmNmlwOGE1NGNnZnJubGFzYjBieXBxaHhsdmgxcCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/lYPBgYVH3Fyn7L9O39/giphy.gif" alt="Instalacion" width="600px">
</div>

2. Abre el instalador, acepta los términos de instalación y haz clic en *"Next"* hasta llegar a la última ventana, donde seleccionarás *"Install"*. Espera a que el proceso termine y haz clic en *"Finish"*.

<div align="center">
  <img src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExbGRuYXp2YXgxNHFkdjR5NHlpZjYzYWp3bzY2NGhoYThybG9seDA2diZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/G1QTxneDPw5wfBlSy7/giphy.gif" alt="Instalacion" width="600px">
</div>

### 3.2. 🖥️📦➡️🐧🔧 Instalación de Ubuntu en la máquina virtual

1. Al iniciar el programa por primera vez, solicitará el tipo de licencia. Usaremos la opción *no comercial*.

<div align="center">
  <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExeGR5ejFmZm91OTYxaWtqMnV2cjlxc3R6b2g0cmdocDB6NjJoaWJ6dyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/PCGxiS191T9XPBuwha/giphy.gif" alt="Instalacion" width="600px">
</div>

2. Selecciona la opción *"Create a new virtual machine"*, lo que iniciará el proceso y abrirá una nueva ventana. Allí se solicitará agregar el archivo .iso de instalación. Luego, haz clic en *"Next"*.

<div align="center">
  <img src="https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExdGQyaTJnbnJhOTBlOGV3MDZwOHl2NmZlaGRuaGtnYWh0djhtbDk5ZyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/a7jG0fEPlC5vGCLgcw/giphy.gif" alt="Instalacion_ISO" width="600px">
</div>

3. Nos solicitará cuáles son las credenciales que deseamos para el sistema de Ubuntu. Luego, solicitará las configuraciones para la máquina virtual, como el nombre y la ubicación de los archivos, el tamaño del disco, entre otras opciones. Dejaremos estas configuraciones por defecto, con una leve modificación en el tamaño del disco.

>[!NOTE]
>En este ejemplo usamos "Robotica_movil", pero puedes elegir el nombre que desees. Recuerda que el nombre de usuario solo puede estar en minúsculas, usar caracteres alfanuméricos y guiones.

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExYnM5bmpjamFzeDBvcG5iOWQzYnB1a2tqaHpvbXUzMHVycnlwZ3YyZiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/7lFgp7TiY2tZzuqVFb/giphy.gif" alt="Instalacion_ISO" width="600px">
</div>

>[!TIP]
>Si tienes algún problema con la máquina virtual, revisa las configuraciones en detalle.

## 4. 📚🗄️ Referencias

**[1]** P. Cárdenas, "Intro_Ros", 2023. [Online]. Available: [https://github.com/PedroFCardenas/Intro_Ros](https://github.com/PedroFCardenas/Intro_Ros)
