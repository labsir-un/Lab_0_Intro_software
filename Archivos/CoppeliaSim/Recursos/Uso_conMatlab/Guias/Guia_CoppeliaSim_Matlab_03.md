<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de Software</h1>

<h2>Guía CoppeliaSim - Modificación de posición en CoppeliaSim desde MATLAB</h2>

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
- [1. 🎯 Objetivo](#1--objetivo)
- [2. 🧰 Herramientas Necesarias](#2--herramientas-necesarias)
  - [2.1. 🔭🛠️ Equipos](#21-️-equipos)
  - [2.2. 🖥️💾 Software](#22-️-software)
- [3. 🔧️➡️🚀 Procedimiento](#3-️️-procedimiento)
- [4. 🦾🏋️ Ejercicios](#4-️-ejercicios)
</details>

---

<h1>📊➡️📍 Guía CoppeliaSim - Modificación de posición en CoppeliaSim desde MATLAB </h1>

## 1. 🎯 Objetivo

- Modificar la posición de un objeto en una escena de CoppeliaSim usando comandos desde MATLAB.

## 2. 🧰 Herramientas Necesarias

### 2.1. 🔭🛠️ Equipos

  - Computador.

### 2.2. 🖥️💾 Software

  - CoppeliaSim Edu V4.9.0.
  - MATLAB (Debe contar con una licencia personal, de aula o de campus).

## 3. 🔧️➡️🚀 Procedimiento

1. Abra MATLAB.
2. Descargue el script [copsim3.m](./../scripts/copsim3.m) y guardelo en su carpeta de trabajo.
3. Abra CoppeliaSim.
4. En Coppelia Sim abrir la escena *"Esc_01.ttt"*.
5. En la ventana *"Scene hierarchy"* dar doble click en el ícono del objeto ***Caja 1*** <img src="https://imgur.com/w5EUl9I.png" alt="icono_script" width="20px">. Se abrira la ventana *"Scene Object Properties"*, en ella dar clic en el botón *"Dynamic properties dialog"*. Se abrira la ventana *"Rigid Body Dynamic Properties"*, deshabilite *"Body is Dynamic"*.

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExZTFlZmtzZDBud2F0dXdzaXQ3dWMycm05MWNyeGI5NDR6dzZiYnhzcCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/vWLNaZL80e9TlbRb7U/giphy.gif" alt="Deshabilitar_dinamica" width="600px">
</div>

6. Inicie la simulación en CoppeliaSim con el ícono <img src="https://imgur.com/H7ItfPW.png" alt="icono_run" width="20px">
7. En MATLAB correr el Script.

>[!WARNING]
> Si MATLAB solicita cambio de carpeta, hacer clic en "*Aceptar*".

8. En la ventana *"Command Window"* de MATLAB se presenta la posición de la ***Caja 1***, la posición Pd calculada y en la
escena de Coppelia Sim la caja cambia de posición al valor asignado por PD.
9. Ejecutar el script en MATLAB varias veces, en cada ejecución la caja cambia su posición.
10. Detenga la simulación en CoppeliaSim con el ícono <img src="https://imgur.com/OerwXkg.png" alt="icono_stop" width="20px">.

## 4. 🦾🏋️ Ejercicios

1. Modifique el algoritmo de MATLAB para que ejecute el desplazamiento de la caja repetidamente usando un ciclo FOR.
2. Investige el comando para modificar la orientación de la caja y crear scripts en MATLAB para modificar repetidamente la orientación de la caja (Rotación) o para hacer modificaciones de posición y orientación combinadas.