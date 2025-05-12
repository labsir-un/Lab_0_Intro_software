<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de Software</h1>

<h2>Ubuntu usando WSL</h2>

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
  - [3.1. 🔍📄 Verificar versión de Windows y compilación](#31--verificar-versión-de-windows-y-compilación)
  - [3.2. ⚙️🖐️ Habilitar el sistema para usar WSL](#32-️️-habilitar-el-sistema-para-usar-wsl)
  - [3.3. 💻🪟➡️🐧 Instalación de Linux en Windows con WSL](#33-️-instalación-de-linux-en-windows-con-wsl)
- [4. 📚🗄️ Referencias](#4-️-referencias)
</details>

---

<h1> 🖥️💾 Guía 0 - Uso de Windows Subsystem for Linux</h1>

## 1. 📖 Introducción

Windows Subsystem for Linux (WSL) es una herramienta que permite ejecutar un entorno de Linux dentro de Windows sin necesidad de una máquina virtual o una instalación dual. En el ámbito de la robótica, WSL es especialmente útil para desarrollar y ejecutar software basado en Linux, como Robot Operating System (ROS), sin abandonar el ecosistema de Windows. Esto facilita a los desarrolladores el acceso a herramientas avanzadas de simulación, control y comunicación sin los inconvenientes de cambiar de sistema operativo.

WSL permite integrar entornos de desarrollo robótico con software de Windows, lo que resulta ideal para quienes trabajan con herramientas como Gazebo, CoppeliaSim o simulaciones de ROS. Además, su compatibilidad con Docker y otras herramientas de contenedización facilita la gestión de dependencias y entornos aislados, optimizando el flujo de trabajo en la programación y prueba de algoritmos de robótica.

## 2. 🧰 Herramientas necesarias

### 2.1. 🔭🛠️ Equipos

  - Computador.

### 2.2. 🖥️💾 Software

  - Windows 10 o 11.
  - Terminal de Windows.
  - PowerShell.

## 3. 🔧➡️🚀 Procedimiento 

> [!IMPORTANT]
> En Windows 10, WSL no tiene GUI de forma nativa, por lo que deberás realizar pasos adicionales para configurarla.

> [!TIP]
> Lo recomendable al usar Ubuntu en WSL es manejar todo desde la terminal. 

### 3.1. 🔍📄 Verificar versión de Windows y compilación

Usando la combinación de teclas *Windows + R*, abre el cuadro de diálogo "Ejecutar". Luego, escribe *"winver"* y presiona Enter. Se abrirá una ventana donde podrás ver la versión de compilación de Windows.

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2VrODR6ODlwZ2hyZDF4Y2I5YXRmdHU3YTZ3dndzdW1iYjVkM3BwdCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xye8OwEtLr6sjaOWPr/giphy.gif" alt="Ventana Ejecutar" width="300px">
</div>

> [!IMPORTANT]
> Si tienes Windows 10 versión 2004 o posterior (compilación 19041 y superiores) o Windows 11, puedes saltarte la siguiente sección e ir directamente a [4.2. 💻🪟➡️🐧 Instalación de Linux en Windows con WSL](#42-️-instalación-de-linux-en-windows-con-wsl).

### 3.2. ⚙️🖐️ Habilitar el sistema para usar WSL

1. Abre PowerShell en modo administrador.

<div align="center">
  <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExNXVocml6eWI0OWMxZmRpcHA3ZDY0d283bmRzb2dzMTRkY3VpdGt5eiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/SIhv84dr0uXoinA1vp/giphy.gif" alt="PowerShell" width="600px">
</div>

2. Habilita la característica opcional "Subsistema de Windows para Linux" ejecutando:

```sh
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
``` 

3. Abre "Configuración" en el menú de Windows, dirígete a "Actualización y seguridad" y selecciona "Buscar actualizaciones".

4. Habilita la característica "Plataforma de máquina virtual" ejecutando:

```sh
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

### 3.3. 💻🪟➡️🐧 Instalación de Linux en Windows con WSL

1. Ejecuta el siguiente comando para instalar WSL. Luego, reinicia el equipo.

```sh
wsl --install
```

2. Usa el siguiente comando para ver las distribuciones de Linux disponibles:

```sh
wsl --list --online
```

<div align="center">
  <img src="https://imgur.com/HETAuTH.png" alt="Distribuciones disponibles" width="600px">
</div>

3. Instala Ubuntu 20.04 con el siguiente comando:

```sh
wsl --install -d Ubuntu-20.04
```

4. Para comenzar a usar el sistema:
   - En Windows 10, busca *Ubuntu 20.04* en la barra de búsqueda de aplicaciones.
   - En Windows 11, busca *Terminal* y selecciona la distribución instalada.

## 4. 📚🗄️ Referencias

**[1]** Microsoft, "Instalación manual de WSL", 2025. [Online]. Available: [https://learn.microsoft.com/es-es/windows/wsl/install-manual](https://learn.microsoft.com/es-es/windows/wsl/install-manual)

**[2]** Microsoft, "Instalar WSL", 2025. [Online]. Available: [https://learn.microsoft.com/es-es/windows/wsl/install](https://learn.microsoft.com/es-es/windows/wsl/install)
