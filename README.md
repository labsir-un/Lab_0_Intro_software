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
    - [4.1.2. 💾🖥️ Instalación de linux](#412-️-instalación-de-linux)
  - [4.2. 📊 MATLAB](#42--matlab)
    - [4.2.1. 💾🖥️ Instalación de matlab](#421-️-instalación-de-matlab)
    - [4.2.2. 📂 Recursos](#422--recursos)
  - [4.3. 🤖 Toolbox de Peter Corke](#43--toolbox-de-peter-corke)
    - [4.3.1. 💾🖥️ Instalación de toolbox](#431-️-instalación-de-toolbox)
    - [4.3.2. 📂 Recursos](#432--recursos)
  - [4.4. 🎮 CoppeliaSim](#44--coppeliasim)
    - [4.4.1. 💾🖥️ Instalación de CoppeliaSim](#441-️-instalación-de-coppeliasim)
    - [4.4.2. 📂 Recursos](#442--recursos)
  - [4.5. 🦾 ROS](#45--ros)
    - [4.5.1. 💾🖥️ Instalación de](#451-️-instalación-de)
    - [4.5.2. 📂 Recursos](#452--recursos)
- [5. ⚙️🧰 Algunas herramientas utiles](#5-️-algunas-herramientas-utiles)
  - [5.1. ⌨️ Terminal](#51-️-terminal)
  - [5.2. 🗂️🐙  Git y Github](#52-️--git-y-github)
    - [5.2.1. 📹📺 Videos](#521--videos)
    - [5.2.2. 🔗📚 Links](#522--links)
  - [5.3. 📝 Visual Studio Code](#53--visual-studio-code)
    - [5.3.1. 🔌🧩 Extensiones recomendadas](#531--extensiones-recomendadas)
  - [5.4. 📑 Markdown](#54--markdown)
    - [5.4.1. 📹📺 Videos](#541--videos)
    - [5.4.2. 🔗📚 Links](#542--links)
  - [5.5. 🏗️ LeoCAD](#55-️-leocad)
    - [5.5.1. 🔗📚 Links](#551--links)
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


#### 4.1.2. 💾🖥️ Instalación de linux

A continuación se mostrara como realizar cada una de las instalaciones para cada metodo de uso:

- [💿🏠 Intalación nativa (Recomendada, casi mandatoria)](./Archivos/Ubuntu/Instalacion_nativa.md)

- [🖥️📦 Máquina virtual](./Archivos/Ubuntu/Maquina_virtual.md)

- [🪟🔧🐧WSL (Windows Subsystem for Linux)](./Archivos/Ubuntu/WSL.md)

- 🚢🐳 Aplicaciones dockerizadas: Su configuración es compleja y requiere el uso del WSL por lo cual esta opción no se vera empleada.

### 4.2. 📊 MATLAB

MATLAB es una herramienta esencial en múltiples disciplinas debido a su capacidad para realizar cálculos numéricos, análisis de datos, modelado y simulación de sistemas complejos. En ingeniería y ciencia, su versatilidad permite desarrollar algoritmos avanzados, procesar señales e imágenes, diseñar sistemas de control y optimizar modelos matemáticos. Su amplia gama de bibliotecas y funciones especializadas, junto con su compatibilidad con otros lenguajes y hardware, lo convierten en una plataforma poderosa para la investigación y el desarrollo. Además, su interfaz intuitiva y su capacidad para visualizar datos facilitan la interpretación de resultados, haciendo de MATLAB una herramienta clave en la resolución de problemas científicos y tecnológicos.

En el mundo de la robótica, MATLAB permite diseñar, simular y probar algoritmos de control, percepción y planificación de movimiento antes de implementarlos en hardware real. Su integración con herramientas como Robotics System Toolbox facilita el desarrollo de sistemas autónomos, la simulación de cinemática y dinámica, y la comunicación con plataformas como ROS. Gracias a su capacidad para procesar grandes volúmenes de datos y optimizar modelos complejos, es una herramienta indispensable en la investigación y desarrollo de robots para aplicaciones industriales, médicas y de exploración.

#### 4.2.1. 💾🖥️ Instalación de matlab

Para conocer el proceso de intalación dirigase a:

[🚀🛠️📊 Guia de instalación MATLAB](./Archivos/Matlab/Instalacion.md)

#### 4.2.2. 📂 Recursos

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

El Toolbox de Peter Corke es una de las herramientas más utilizadas en el ámbito de la robótica, ya que proporciona una amplia colección de funciones para la simulación, análisis y control de robots en MATLAB. Este conjunto de herramientas permite a investigadores, estudiantes y profesionales modelar cinemática y dinámica de robots, realizar planificación de trayectorias, diseñar controladores y trabajar con visión por computadora. Su integración con MATLAB facilita la experimentación y validación de algoritmos antes de implementarlos en hardware real, convirtiéndolo en un recurso esencial para el desarrollo de aplicaciones robóticas.

#### 4.3.1. 💾🖥️ Instalación de toolbox

Para conocer el proceso de intalación dirigase a:

[🚀🛠️💾🖥️ Guia de instalación Toolbox de Peter Corke](./Archivos/Toolbox_RCV/Instalacion.md)

#### 4.3.2. 📂 Recursos

- [📕📝  Manual toolbox V9.10](./Archivos/Toolbox_RCV/robot.pdf)
- [🔢⚙️ Funciones basicas toolbox](./Archivos/Toolbox_RCV/resumen_funciones_basicas_toolbox.pdf)
<details>
  <summary>✍🏼🦾📚 Ejemplos de uso del Toolbox</summary>

- [🏹Vectores](./Archivos/Toolbox_RCV/scripts/Matlab%20General%20RVC/Ejemplo_Clase_0_revisado.m)
- [➕✖️➖🏹 Operaciones con vectores](./Archivos/Toolbox_RCV/scripts/Matlab%20General%20RVC/Ejemplo_Clase_1_revisado.m)
- [🔄️🏹 Rotaciones de vectores](./Archivos/Toolbox_RCV/scripts/Matlab%20General%20RVC/Ejemplo_Clase_2_revisado.m)
- [✍🏼📄 Modelo para hacer informes](./Archivos/Toolbox_RCV/scripts/Matlab%20General%20RVC/Ejemplo_Publish_revisado.mlx)
- [➕🏹 Ejemplos de operaciones con vectores](./Archivos/Toolbox_RCV/scripts/Matlab%20General%20RVC/Ejemplos_Matlab_2_revisado.m)
- [🦾🔄️🏹 Ejercicios de rotación de vectores](./Archivos/Toolbox_RCV/scripts/Matlab%20General%20RVC/Ejemplos_Matlab_3.m)
- [🪢🔄️🏹 Transformacion de vectores](./Archivos/Toolbox_RCV/scripts/Matlab%20General%20RVC/Ejemplos_Matlab_4.m)

</details>

### 4.4. 🎮 CoppeliaSim

CoppeliaSim es una herramienta fundamental en la simulación de robots móviles, ya que permite diseñar, probar y optimizar algoritmos de control en un entorno virtual antes de su implementación en hardware real. Gracias a su motor de física avanzado y su compatibilidad con múltiples lenguajes de programación, incluidos MATLAB y Python, los desarrolladores pueden modelar diversos escenarios, desde navegación autónoma hasta manipulación robótica compleja. Esto no solo reduce costos y riesgos asociados con el desarrollo físico, sino que también acelera el proceso de investigación y mejora la precisión de los sistemas robóticos en aplicaciones del mundo real.

#### 4.4.1. 💾🖥️ Instalación de CoppeliaSim

Para conocer el proceso de intalación dirigase a:

[🚀🛠️🎮 Guia de instalación CoppeliaSim](./Archivos/CoppeliaSim/Instalacion.md)

#### 4.4.2. 📂 Recursos  

<details>
  <summary>🔗🤖📡 Uso de CoppeliaSim con Matlab</summary>

- [📡🔄📊 Guia CoppeliaSim - Conexión Matlab y CoppeliaSim](./Archivos/CoppeliaSim/Recursos/Uso_conMatlab/Guias/Guia_CoppeliaSim_Matlab_01.md)
- [🤖🔄📈 Guía CoppeliaSim - Intercambio de información entre Matlab y CoppeliaSim](./Archivos/CoppeliaSim/Recursos/Uso_conMatlab/Guias/Guia_CoppeliaSim_Matlab_02.md)
- [📊➡️📍 Guía CoppeliaSim - Modificación de posición en CoppeliaSim desde MATLAB](./Archivos/CoppeliaSim/Recursos/Uso_conMatlab/Guias/Guia_CoppeliaSim_Matlab_03.md)
</details>

### 4.5. 🦾 ROS

El Robot Operating System (ROS) ha revolucionado el mundo de la robótica al proporcionar una infraestructura de software flexible, modular y escalable para el desarrollo de sistemas robóticos. Su enfoque basado en nodos y comunicación distribuida permite la integración eficiente de sensores, actuadores y algoritmos avanzados, facilitando la creación de robots autónomos capaces de percibir y actuar en entornos complejos. Además, su compatibilidad con múltiples lenguajes de programación, su integración con simuladores como Gazebo y su vasta comunidad de desarrolladores han impulsado la innovación en áreas como la robótica industrial, médica, espacial y de servicio, convirtiéndolo en un estándar esencial en la investigación y desarrollo robótico.

#### 4.5.1. 💾🖥️ Instalación de 

Para conocer el proceso de intalación dirigase a:

[🚀🛠️🦾 Guia de instalación ROS](./Archivos/ROS/Instalacion.md)

#### 4.5.2. 📂 Recursos


## 5. ⚙️🧰 Algunas herramientas utiles

### 5.1. ⌨️ Terminal

La terminal es una herramienta esencial, ya que permite interactuar con el sistema operativo de manera eficiente y precisa mediante comandos. A través de ella, los usuarios pueden gestionar archivos, instalar software, configurar el sistema y ejecutar procesos sin necesidad de una interfaz gráfica.

Por ello, al comenzar a utilizar Ubuntu, es fundamental aprender a manejar la terminal, ya que facilita el uso y la administración del sistema operativo. A continuación, te presentamos algunas recomendaciones para aprovechar al máximo sus funciones.

[📝💻El uso de la terminal](./Archivos/Herramientas/Terminal/Recomendaciones.md)

### 5.2. 🗂️🐙  Git y Github

Git es un sistema de control de versiones que permite a los desarrolladores gestionar y rastrear cambios en su código de manera eficiente. Facilita la colaboración en equipo al permitir trabajar en diferentes ramas, fusionar cambios y revertir versiones anteriores si es necesario.

Por otro lado, GitHub es una plataforma basada en la nube que utiliza Git para alojar repositorios de código y facilitar el trabajo colaborativo. Su importancia radica en que permite compartir proyectos, contribuir a código abierto, gestionar versiones y automatizar procesos mediante integraciones con herramientas de CI/CD. En el desarrollo moderno, Git y GitHub son fundamentales para mantener un flujo de trabajo organizado, seguro y accesible para equipos de cualquier tamaño.

>[!TIP]
>Puedes tener tu cuenta de github con el correo de la universidad y te da los beneficios de "GitHub Education". [Saber más](https://docs.github.com/es/education/explore-the-benefits-of-teaching-and-learning-with-github-education/github-education-for-students/apply-to-github-education-as-a-student)

#### 5.2.1. 📹📺 Videos

<div align="center" style="display: flex; gap: 20px; justify-content: center;">
  <a href="https://www.youtube.com/watch?v=HiXLkL42tMU">
    <img src="https://img.youtube.com/vi/HiXLkL42tMU/0.jpg" alt="Git y Github | Curso Práctico de Git y Github Desde Cero" width="400px">
  </a>
  <a href="https://www.youtube.com/watch?v=3GymExBkKjE">
    <img src="https://img.youtube.com/vi/3GymExBkKjE/0.jpg" alt="Curso de GIT y GITHUB desde CERO para PRINCIPIANTES" width="400px">
  </a>
</div>

#### 5.2.2. 🔗📚 Links 

- [Curso Profesional de Git y GitHub](https://harvest-storm-649.notion.site/Curso-Profesional-de-Git-y-GitHub-4beee201a92040afbb6d82562b11c12a)
- [Generacion de gitignore](https://www.toptal.com/developers/gitignore/)
- [Licencias para el repositorio](https://choosealicense.com/licenses/)

### 5.3. 📝 Visual Studio Code

Visual Studio Code (VS Code) es un editor de código fuente ligero, potente y altamente personalizable desarrollado por Microsoft. Su popularidad radica en su compatibilidad con múltiples lenguajes de programación, su integración con Git, depuración avanzada y una amplia biblioteca de extensiones que amplían sus funcionalidades. Además, su soporte para IntelliSense, resaltado de sintaxis y terminal integrada lo convierten en una herramienta esencial para desarrolladores de todos los niveles. Gracias a su enfoque multiplataforma y su rendimiento optimizado, VS Code es una de las mejores opciones para escribir, probar y depurar código de manera eficiente.

>[!TIP]
>Puedes sincronizar con una cuante de github para guardar configuraciones.

#### 5.3.1. 🔌🧩 Extensiones recomendadas

Las extensiones facilitan el uso de lenguajes y el desarrollo de código. Aca algunas extenciones que podran ser utiles:

- **📸  CodeSnap:** Permite capturar y compartir fragmentos de código con formato atractivo, ideal para documentar y publicar código en redes.  

- **🔍⚠️ Error Lens:** Resalta errores, advertencias y sugerencias directamente en el código, facilitando la depuración y mejorando la productividad.  

- **🤖 GitHub Copilot:** Asistente de codificación basado en inteligencia artificial que sugiere líneas de código y funciones en tiempo real. (Necesitas una cuenta de github que lo tenga habilitado) 

- **📝 Markdown All in One:** Proporciona herramientas avanzadas para escribir y formatear archivos Markdown, incluyendo atajos y vista previa rápida.  

- **📊 Markdown Preview Mermaid:** Agrega soporte para diagramas en Mermaid dentro de archivos Markdown, permitiendo visualizar gráficos en la vista previa.  

- **🎨 Material Icon Theme:** Personaliza los iconos del explorador de archivos en VS Code con un diseño moderno y atractivo.  

- **⚙️ Matlab:** Brinda compatibilidad con el lenguaje MATLAB, incluyendo resaltado de sintaxis, autocompletado y depuración básica.  

- **🤖🔧 ROS:** Agrega soporte para el desarrollo con Robot Operating System (ROS), facilitando la escritura y gestión de nodos y paquetes.  


### 5.4. 📑 Markdown

Markdown es un lenguaje de marcado ligero que permite dar formato a textos de manera sencilla y rápida, sin necesidad de usar editores complejos. Se utiliza ampliamente en documentación, blogs, README de proyectos en GitHub y plataformas de desarrollo. Su sintaxis intuitiva permite estructurar contenido con encabezados, listas, enlaces, imágenes y tablas de manera eficiente. Además, es compatible con múltiples herramientas y convertidores que lo transforman en HTML u otros formatos, lo que lo convierte en una opción ideal para desarrolladores, escritores y creadores de contenido.

#### 5.4.1. 📹📺 Videos

<div align="center" style="display: flex; gap: 20px; justify-content: center;">
  <a href="https://www.youtube.com/watch?v=oxaH9CFpeEE">
    <img src="https://img.youtube.com/vi/oxaH9CFpeEE/0.jpg" alt="Markdown, Curso Práctico para principiantes y desarrolladores" width="400px">
  </a>
  <a href="https://www.youtube.com/watch?v=77Ggk1uzO2A">
    <img src="https://img.youtube.com/vi/77Ggk1uzO2A/0.jpg" alt="¿Por qué debes aprender MARKDOWN?" width="400px">
  </a>
</div>

#### 5.4.2. 🔗📚 Links 

- [Sintaxis de escritura y formato básicos en GitHub](https://docs.github.com/es/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- [Editor online](https://pandao.github.io/editor.md/en.html)


### 5.5. 🏗️ LeoCAD

LeoCAD es un software de modelado 3D diseñado para crear y visualizar construcciones con piezas de LEGO de manera intuitiva. Es una herramienta ideal para entusiastas, diseñadores y educadores que buscan planificar proyectos antes de construirlos físicamente. Cuenta con una extensa biblioteca de piezas basada en LDraw, permitiendo acceso a miles de elementos LEGO. Además, su interfaz amigable y su compatibilidad con otros programas de modelado hacen que sea una opción versátil para diseñar y compartir creaciones de manera digital.

#### 5.5.1. 🔗📚 Links 

- [LeoCAD](https://www.leocad.org/)

