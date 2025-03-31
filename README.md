<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de software</h1>

<h2>Guía 0 - Conociendo herramientas de software para Robotica</h2>


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
- [2. 🎯 Objetivos](#2--objetivos)
- [3. 🧰 Herramientas Necesarias](#3--herramientas-necesarias)
  - [3.1. 🔭🛠️ Equipos](#31-️-equipos)
  - [3.2. 🖥️💾 Software](#32-️-software)
- [4. 🔧➡️🚀 Procedimiento](#4-️-procedimiento)
  - [4.1. 🐧🖥️🦭 Ubuntu](#41-️-ubuntu)
    - [4.1.1. 🖥️💾🧑🏼‍💻 Formas de usar linux](#411-️-formas-de-usar-linux)
    - [💾🖥️ Instalación de linux](#️-instalación-de-linux)
  - [4.2. 📊 MATLAB](#42--matlab)
    - [💾🖥️ Instalación de matlab](#️-instalación-de-matlab)
    - [📂 Recursos](#-recursos)
  - [4.3. 🤖 Toolbox de Peter Corke](#43--toolbox-de-peter-corke)
    - [💾🖥️ Instalación de toolboxjdalema](#️-instalación-de-toolboxjdalema)
    - [📂 Recursos](#-recursos-1)
  - [4.4. 🎮 CoppeliaSim](#44--coppeliasim)
    - [💾🖥️ Instalación de CoppeliaSim](#️-instalación-de-coppeliasim)
    - [📂 Recursos](#-recursos-2)
  - [4.5. 🦾 ROS](#45--ros)
    - [💾🖥️ Instalación de](#️-instalación-de)
    - [📂 Recursos](#-recursos-3)
- [5. ⚙️🧰 Algunas herramientas utiles](#5-️-algunas-herramientas-utiles)
  - [5.1. ⌨️ Terminal](#51-️-terminal)
  - [5.2. 🗂️ Git](#52-️-git)
  - [5.3. 📝 Visual Studio Code](#53--visual-studio-code)
  - [5.4. 📑 Markdown](#54--markdown)
  - [5.5. 🏗️ LeoCAD](#55-️-leocad)
</details>

---

<h1> 🖥️💾 Guía 0 - Conociendo heramientas de software a utilizar </h1>

## 1. 📖 Introducción

El uso de herramientas de software en el aprendizaje de la ingeniería aplicada a robots móviles es clave para el desarrollo de habilidades técnicas y analíticas. Estas herramientas permiten simular escenarios reales, programar algoritmos de control e integrar sensores, facilitando un entorno accesible para la experimentación. A través de entornos virtuales, es posible comprender mejor los principios de locomoción, percepción y planificación de movimiento sin depender exclusivamente del hardware físico, lo que optimiza el tiempo y los recursos disponibles.

Además, el software especializado en robótica, como ROS (Robot Operating System), MATLAB y CoppeliaSim, proporciona una plataforma versátil para la implementación y validación de modelos de robots móviles. Estas herramientas permiten realizar pruebas en simulaciones antes de llevarlas al mundo real, reduciendo riesgos y costos. Al desarrollar algoritmos avanzados de navegación, evitar obstáculos y optimizar trayectorias, se adquiere un conocimiento más profundo sobre la robótica aplicada y sus desafíos en entornos dinámicos.

Por último, el aprendizaje basado en software fomenta el pensamiento crítico y la resolución de problemas, esenciales en la ingeniería. Al enfrentarse a escenarios simulados, es posible analizar distintos enfoques para la programación y el control de robots móviles, evaluando sus ventajas y desventajas. Esta metodología no solo mejora la comprensión teórica, sino que también promueve la creatividad y la innovación, permitiendo enfrentar los desafíos tecnológicos del futuro en el ámbito de la automatización y la inteligencia artificial.

## 2. 🎯 Objetivos

- Familiarizarse con herramientas de simulación y programación, como CoppeliaSim, MATLAB, ROS y RVCTool.
- Configurar herramientas de software para la simulación y el control de robots móviles.


## 3. 🧰 Herramientas Necesarias

### 3.1. 🔭🛠️ Equipos

  - Computador.

### 3.2. 🖥️💾 Software

  - Ubuntu 20.04
  - Buscador Web (Chrome, Mozilla, Microsoft Edge o cualquier otro).

## 4. 🔧➡️🚀 Procedimiento 


### 4.1. 🐧🖥️🦭 Ubuntu

Para trabajar con robots móviles y su simulación, es altamente recomendable utilizar una distribución de Linux, ya que muchas herramientas especializadas, como ROS (Robot Operating System), solo son compatibles con este sistema operativo. Ubuntu 20.04 es una opción ampliamente utilizada en la comunidad de robótica debido a su estabilidad y compatibilidad con ROS Noetic, así como con otras herramientas esenciales para el desarrollo y control de robots. En la sección [5. ⚙️🧰 Algunas herramientas utiles](#5-️-algunas-herramientas-utiles), se presentarán algunas herramientas clave para facilitar el uso de Ubuntu 20.04, permitiendo una gestión más eficiente del sistema y optimizando el flujo de trabajo en la programación y simulación de robots.

####  4.1.1. 🖥️💾🧑🏼‍💻 Formas de usar linux

Para usar correr un sistemas linux en nuestra computadora tenemos diversas formas de hacerlo que se presentaran a continuación:

| Método                              | Ventajas | Desventajas |
|-------------------------------------|----------|-------------|
| **Instalación completa**            | Máximo rendimiento, acceso total al hardware, estabilidad. | No puedes usar otro sistema sin reinstalar o usar una VM. |
| **Arranque dual**                   | Permite elegir entre Ubuntu y otro SO, buen rendimiento. | Requiere reiniciar para cambiar de sistema, posible riesgo en la gestión del arranque. |
| **Máquina virtual**                 | No afecta el sistema principal, útil para pruebas. | Menor rendimiento, especialmente en gráficos. |
| **WSL (Windows Subsystem for Linux)** | Integración con Windows, sin necesidad de reiniciar. | No tiene acceso completo al hardware, no es ideal para interfaces gráficas pesadas. |
| **Aplicaciones dockerizadas**       | Permite ejecutar aplicaciones aisladas sin modificar el sistema. | Se necesita aprender Docker, y algunas aplicaciones pueden requerir configuración avanzada. |


#### 💾🖥️ Instalación de linux

A continuación se mostrara como realizar cada una de las instalaciones para cada metodo de uso:

- [💿🏠 Intalación nativa (Recomendada, casi mandatoria)](./Archivos/Ubuntu/Instalacion_nativa.md)

- [🖥️📦 Máquina virtual](./Archivos/Ubuntu/Maquina_virtual.md)

- [🪟🔧🐧WSL (Windows Subsystem for Linux)](./Archivos/Ubuntu/WSL.md)

- 🚢🐳 Aplicaciones dockerizadas: Su configuración es compleja y requiere el uso del WSL por lo cual esta opción no se vera empleada.

### 4.2. 📊 MATLAB

MATLAB es una herramienta esencial en múltiples disciplinas debido a su capacidad para realizar cálculos numéricos, análisis de datos, modelado y simulación de sistemas complejos. En ingeniería y ciencia, su versatilidad permite desarrollar algoritmos avanzados, procesar señales e imágenes, diseñar sistemas de control y optimizar modelos matemáticos. Su amplia gama de bibliotecas y funciones especializadas, junto con su compatibilidad con otros lenguajes y hardware, lo convierten en una plataforma poderosa para la investigación y el desarrollo. Además, su interfaz intuitiva y su capacidad para visualizar datos facilitan la interpretación de resultados, haciendo de MATLAB una herramienta clave en la resolución de problemas científicos y tecnológicos.

En el mundo de la robótica, MATLAB permite diseñar, simular y probar algoritmos de control, percepción y planificación de movimiento antes de implementarlos en hardware real. Su integración con herramientas como Robotics System Toolbox facilita el desarrollo de sistemas autónomos, la simulación de cinemática y dinámica, y la comunicación con plataformas como ROS. Gracias a su capacidad para procesar grandes volúmenes de datos y optimizar modelos complejos, es una herramienta indispensable en la investigación y desarrollo de robots para aplicaciones industriales, médicas y de exploración.

#### 💾🖥️ Instalación de matlab

Para conocer el proceso de intalación dirigase a:

[🚀🛠️📊 Guia de instalación MATLAB](./Archivos/Matlab/Instalacion.md)

#### 📂 Recursos

<details>
  <summary>🛤️🚗🤖📡 Simulacion de robots moviles</summary>

- [✍🏼🤖 Dibujar robot circular 2D](./Archivos/Matlab/scripts/Simulation%20Robot%20Moviles/dibrob.m)
- [✍🏼🤖🔴 Dibujar robot circular 2D dado un radio](./Archivos/Matlab/scripts/Simulation%20Robot%20Moviles/dibrobr.m) 
- [✍🏼🚗📍🧭Dibujar vehículos en posiciones y orientaciones](./Archivos/Matlab/scripts/Simulation%20Robot%20Moviles/dibveh1.m)
- [✍🏼🚗🚙📍🧭 Dibujar vehículos con diferentes radios en posiciones y orientaciones dada](./Archivos/Matlab/scripts/Simulation%20Robot%20Moviles/dibveh2.m)
- [∫📈🧮 Metodos de integración](./Archivos/Matlab/scripts/Simulation%20Robot%20Moviles/intgr.m)
- [🏎️💨 Movimiento cinemático de un móvil en un plano](./Archivos/Matlab/scripts/Simulation%20Robot%20Moviles/kinetbas.m)
- [🏎️💨📈 Movimiento cinemático de un móvil perfiles de velocidad](./Archivos/Matlab/scripts/Simulation%20Robot%20Moviles/kinetbas2.m)
- [📍➡️📍 Simulacion de movimiento](./Archivos/Matlab/scripts/Simulation%20Robot%20Moviles/sim1.m)
</details>

### 4.3. 🤖 Toolbox de Peter Corke

#### 💾🖥️ Instalación de toolboxjdalema

#### 📂 Recursos

### 4.4. 🎮 CoppeliaSim

CoppeliaSim es una herramienta fundamental en la simulación de robots móviles, ya que permite diseñar, probar y optimizar algoritmos de control en un entorno virtual antes de su implementación en hardware real. Gracias a su motor de física avanzado y su compatibilidad con múltiples lenguajes de programación, incluidos MATLAB y Python, los desarrolladores pueden modelar diversos escenarios, desde navegación autónoma hasta manipulación robótica compleja. Esto no solo reduce costos y riesgos asociados con el desarrollo físico, sino que también acelera el proceso de investigación y mejora la precisión de los sistemas robóticos en aplicaciones del mundo real.

#### 💾🖥️ Instalación de CoppeliaSim

Para conocer el proceso de intalación dirigase a:

[🚀🛠️🎮 Guia de instalación CoppeliaSim](./Archivos/CoppeliaSim/Instalacion.md)

#### 📂 Recursos  

<details>
  <summary>🔗🤖📡 Uso de CoppeliaSim con Matlab</summary>

- [📡🔄📊 Guia CoppeliaSim - Conexión Matlab y CoppeliaSim](./Archivos/CoppeliaSim/Recursos/Uso_conMatlab/Guias/Guia_CoppeliaSim_Matlab_01.md)
- [🤖🔄📈 Guía CoppeliaSim - Intercambio de información entre Matlab y CoppeliaSim](./Archivos/CoppeliaSim/Recursos/Uso_conMatlab/Guias/Guia_CoppeliaSim_Matlab_02.md)
- [📊➡️📍 Guía CoppeliaSim - Modificación de posición en CoppeliaSim desde MATLAB](./Archivos/CoppeliaSim/Recursos/Uso_conMatlab/Guias/Guia_CoppeliaSim_Matlab_03.md)
</details>

### 4.5. 🦾 ROS

El Robot Operating System (ROS) ha revolucionado el mundo de la robótica al proporcionar una infraestructura de software flexible, modular y escalable para el desarrollo de sistemas robóticos. Su enfoque basado en nodos y comunicación distribuida permite la integración eficiente de sensores, actuadores y algoritmos avanzados, facilitando la creación de robots autónomos capaces de percibir y actuar en entornos complejos. Además, su compatibilidad con múltiples lenguajes de programación, su integración con simuladores como Gazebo y su vasta comunidad de desarrolladores han impulsado la innovación en áreas como la robótica industrial, médica, espacial y de servicio, convirtiéndolo en un estándar esencial en la investigación y desarrollo robótico.

#### 💾🖥️ Instalación de 

Para conocer el proceso de intalación dirigase a:

[🚀🛠️🦾 Guia de instalación ROS](./Archivos/ROS/Instalacion.md)

#### 📂 Recursos


## 5. ⚙️🧰 Algunas herramientas utiles

### 5.1. ⌨️ Terminal

La terminal es una herramienta esencial, ya que permite interactuar con el sistema operativo de manera eficiente y precisa mediante comandos. A través de ella, los usuarios pueden gestionar archivos, instalar software, configurar el sistema y ejecutar procesos sin necesidad de una interfaz gráfica.

Por ello, al comenzar a utilizar Ubuntu, es fundamental aprender a manejar la terminal, ya que facilita el uso y la administración del sistema operativo. A continuación, te presentamos algunas recomendaciones para aprovechar al máximo sus funciones.

[📝💻El uso de la terminal](./Archivos/Herramientas/Terminal/Recomendaciones.md)

### 5.2. 🗂️ Git

### 5.3. 📝 Visual Studio Code

### 5.4. 📑 Markdown

### 5.5. 🏗️ LeoCAD



