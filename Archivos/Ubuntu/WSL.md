<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robotica Movil</h3>

<h1>Herramientas de software</h1>

<h2>Ubuntu usando WSL</h2>


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
- [2. 🧰 Herramientas necesarias](#2--herramientas-necesarias)
  - [2.1. 🔭🛠️ Equipos](#21-️-equipos)
  - [2.2. 🖥️💾 Software](#22-️-software)
- [3. 🔧➡️🚀 Procedimiento](#3-️-procedimiento)
  - [4. 🔍📄 Verificar versión de Windows y compilación](#4--verificar-versión-de-windows-y-compilación)
  - [4.1. ⚙️🖐️ Habilitar el sistema para usar WSL](#41-️️-habilitar-el-sistema-para-usar-wsl)
  - [4.2. 💻🪟➡️🐧 Instalación de Linux en Windows con WSL](#42-️-instalación-de-linux-en-windows-con-wsl)
- [5. 📚🗄️ Referencias](#5-️-referencias)



</details>

---

<h1> 🖥️💾 Guía 0 - Uso de windows subsystem linux</h1>

## 1. 📖 Introducción

Windows Subsystem for Linux (WSL) es una herramienta que permite ejecutar un entorno de Linux dentro de Windows sin necesidad de una máquina virtual o una instalación dual. En el ámbito de la robótica, WSL es especialmente útil para desarrollar y ejecutar software basado en Linux, como Robot Operating System (ROS), sin abandonar el ecosistema de Windows. Esto facilita a los desarrolladores el acceso a herramientas avanzadas de simulación, control y comunicación sin los inconvenientes de cambiar de sistema operativo.

WSL permite integrar entornos de desarrollo robótico con software de Windows, lo que resulta ideal para quienes trabajan con herramientas como Gazebo, CoppeliaSim o simulaciones de ROS. Además, su compatibilidad con Docker y otras herramientas de contenedorización facilita la gestión de dependencias y entornos aislados, optimizando el flujo de trabajo en la programación y prueba de algoritmos de robótica.

## 2. 🧰 Herramientas necesarias

### 2.1. 🔭🛠️ Equipos

  - Computador.

### 2.2. 🖥️💾 Software

  - Windows 10 o 11.
  - Terminal de Windows.
  - PowerShell.

## 3. 🔧➡️🚀 Procedimiento 

> [!IMPORTANT]
> Para usar WSL en windows 10 **no** se tiene GUI de forma nativa por lo cual para configurarla deberas realizar más pasos.

>[!TIP]
>Lo aconsejable con este tipo de uso de Ubuntu es manejar todo desde la terminal. 

### 4. 🔍📄 Verificar versión de Windows y compilación

Usando el comando *windows + "R"* abriremos el cuadro de diálogo Ejecuta. En el cuadro usaremos el comando *"winver"* lo cual abrira otra ventana donde podemos ver la versión de compilación.

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExc2VrODR6ODlwZ2hyZDF4Y2I5YXRmdHU3YTZ3dndzdW1iYjVkM3BwdCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/xye8OwEtLr6sjaOWPr/giphy.gif" alt="Ventana_ejecutar" width="600px">
</div>

>[!IMPORTANT]
>Si tienes Windows 10 versión 2004 y posteriores (compilación 19041 y posteriores) o Windows 11 puedes saltate la siguiente sección e ir a [4.2. 💻🪟➡️🐧 Instalación de Linux en Windows con WSL](#42-️-instalación-de-linux-en-windows-con-wsl).

### 4.1. ⚙️🖐️ Habilitar el sistema para usar WSL

1. Abra PowerShell en modo administrador.
   
<div align="center">
  <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExNXVocml6eWI0OWMxZmRpcHA3ZDY0d283bmRzb2dzMTRkY3VpdGt5eiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/SIhv84dr0uXoinA1vp/giphy.gif" alt="PowerShell" width="600px">
</div>

2. Habilitar la característica opcional "Subsistema de Windows para Linux". Para esto ejecute el comando:

```sh
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
``` 

3. Abra "Configuración" en el menú de Windows, vaya a "Actualización y seguridad" y seleccione "Buscar actualizaciones"

4. Habilitación de la característica Máquina virtual. Para esto ejecute el comando:

```sh
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```

### 4.2. 💻🪟➡️🐧 Instalación de Linux en Windows con WSL

1. Usando el comando `wsl --install` se intalara el subsistema linux. Luego sera necesario reinicar el computador.

2. Con el comando `wsl --list --online` podra visualizar las distribuciones disponibles.

<div align="center">
  <img src="https://imgur.com/HETAuTH.png" alt="PowerShell" width="600px">
</div>


3. Con el comando `wsl --install -d Ubuntu-20.04` se instalara ubuntu 20.04.

4. Para comenzar a usar el sistema en Windows 10 en la barra de busqueda de aplicaciones busca *Ubuntu 20.04*. Si usas Windows 11 busca *Terminal* en esta podras comenzar a usar Ubuntu 20.04.

## 5. 📚🗄️ Referencias

**[1]** Microsoft, "Instalación manual de WSL", 2025. [Online]. Available:  
[https://learn.microsoft.com/es-es/windows/wsl/install-manual](https://learn.microsoft.com/es-es/windows/wsl/install-manual)

**[2]** Microsoft, "Instalar WSL", 2025. [Online]. Available:  
[https://learn.microsoft.com/es-es/windows/wsl/install](https://learn.microsoft.com/es-es/windows/wsl/install)