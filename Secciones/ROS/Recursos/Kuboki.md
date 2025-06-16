<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de Software</h1>

<h2>Uso del robot Kobuki mediante ROS</h2>

<h4>Pedro F. Cárdenas<br>
    Ricardo Ramírez<br>
    Juan S. Daleman</h4>

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
- [3. 🧰 Herramientas Necesarias](#3--herramientas-necesarias)
  - [3.1. 🔭🛠️ Equipos](#31-️-equipos)
  - [3.2. 🖥️💾 Software](#32-️-software)
- [4. ⚙️🐢🤖 Identificación de caracteristicas del robot móvil Kobuki](#4-️-identificación-de-caracteristicas-del-robot-móvil-kobuki)
- [5. 🔧➡️🚀 Procedimiento](#5-️-procedimiento)
  - [5.1. 🌟🐢🤖 Primera interacción con el robot](#51--primera-interacción-con-el-robot)
  - [5.2. 🧰🌐🤖 Configuración de ROS Noetic](#52--configuración-de-ros-noetic)
  - [5.3. 🐢🌐🤖 Usando el robot kuboki mediante ROS Noetic](#53--usando-el-robot-kuboki-mediante-ros-noetic)
  - [5.4. 🔧📊🖥️🤖 Diagnósticos con Robot Monitor GUI](#54-️-diagnósticos-con-robot-monitor-gui)
  - [5.5. 🧑‍💻🐢🌐🤖 Interactuando con el robot mediante ROS.](#55--interactuando-con-el-robot-mediante-ros)
- [6. 📚🗄️ Referencias](#6-️-referencias)

</details>

---

<h1> 🌐🐢🤖 Uso del robot Kobuki mediante ROS </h1>

## 1. 📖 Introducción

Kobuki es el nombre que se le da a una serie de bases de robots móviles desarrolladas por la empresa coreana Yujin Robot. Su uso principal se centra actualmente en el desarrollo y la investigación en robótica móvil para entornos interiores.

Su configuración permite la conexión de una unidad externa de procesamiento encargada de comunicarse y controlar la base, así como de gestionar sensores o actuadores adicionales. Existen tres formas de implementar el marco de comunicación, control y monitoreo del Kobuki: mediante una aplicación en C++ para Linux, a través de la plataforma TurtleBot2, o mediante el meta-sistema operativo ROS.

En esta guía se presentarán las características principales del robot Kobuki y se desarrollarán programas básicos para interactuar con él mediante ROS.

## 2. 🎯 Objetivos

- Conocer las características generales del robot móvil Kobuki.

- Conectar el robot Kobuki utilizando ROS Noetic.

- Ejecutar programas básicos con el robot Kobuki utilizando el framework de ROS.

## 3. 🧰 Herramientas Necesarias

### 3.1. 🔭🛠️ Equipos

- Computador.
- Robot Kuboki.

### 3.2. 🖥️💾 Software

- Ubuntu 20.04.
- ROS Noetic.

>[!IMPORTANT]
>Si aun no ha intalado ROS puede ver [🖥️📂 Guía 0 - Instalación de ROS Noetic](./../Instalacion.md) para el proceso de intalación.

## 4. ⚙️🐢🤖 Identificación de caracteristicas del robot móvil Kobuki

<div align="center">
  <img src="https://kobuki.readthedocs.io/en/devel/_images/top_view.jpg" alt="Robot_kobuki_Vista_superior" width="600px">
</div>

La base Kobuki es una base móvil terrestre de tracción diferencial, similar a otras como el [Khepera](https://roboticsknowledgebase.com/wiki/common-platforms/khepera4/) o el [irobot](https://edu.irobot.com/what-we-offer/create3). Puede alcanzar una velocidad lineal de hasta 70 cm/s y una velocidad rotacional máxima de 180 °/s, o de 110 °/s sin comprometer el rendimiento del giro.

Tiene una capacidad de carga de hasta 5 kg y puede superar escalones de hasta 12 mm de altura. Su tiempo de carga es de aproximadamente 1.5 horas (con solo una ranura de batería ocupada) y puede operar hasta por 3 horas. La recarga se realiza mediante una estación de carga, a la cual puede conectarse automáticamente.

Cuenta con dos ruedas libres fijas y removibles ubicadas bajo el chasis, una en la parte delantera y otra en la trasera, alineadas sobre el eje x del robot. Además, posee dos ruedas de tracción con suspensión, situadas en ambos laterales del chasis. También dispone de un sistema denominado wheel drop, que puede detener el robot cuando alguna de las ruedas desciende más de 5 cm respecto a su posición normal de operación.

<div align="center">
  <img src="https://kobuki.readthedocs.io/en/devel/_images/bottom_view.jpg" alt="Robot_kobuki_Vista_inferior" width="600px">
</div>

Cabe destacar que, en una superficie completamente plana, en un instante dado solo una de las ruedas libres está en contacto con el suelo. Es decir, los cuatro puntos de apoyo de las ruedas no se encuentran en un mismo plano.

Para la comunicación, cuenta con conector USB y pines RX/TX para la conexión a computador, además de un interruptor para activar el modo de actualización de firmware.

Entre sus elementos de hardware encontramos:

- Alimentación: Slot para dos baterías de ion-litio de 14.8 V y 2200 mAh.

- Sensores integrados:

    - Girospcopio digital de tres ejes.
    - Bumpers a izquierda, derecha y centro.
    - Tres sensores de desnivel en la parte inferior.
    - Sensores "Wheel drop" en cada rueda de tracción.
    - Tres receptores IR para la detección de la estación de carga.

- Controles:

    - Tres botones sobre el panel de control.
    - Dos LEDs programables y un LED de estado. El LED de estado del Kobuki nos indica:
        - **Verde:** El Kobuki está encendido con alto nivel de batería.
        - **Naranja:** El Kobuki está encendido con bajo nivel de batería.
        - **Verde intermitente:** El Kobuki se está cargando.
        - **Apagado:** El Kobuki está apagado.

- Puertos:

    - Cuatro salidas de poder:
      - 5V@1A Para tarjetas embebidas (Ej: Arduino, Odriod) 
      - 12V/1.5A Para sensores de profundidad (Ej: Kinect, Intel RealSense) 
      - 12V/5A Para accesorios de alta potencia (Ej: Brazo robotico)
      - 19V/2A Para recargar portatiles (con un cargador modificado)
    - Interfaz USB tipo B.
    - Puerto de expanción

- Motores:

    - Dos motores DC de escobillas de 12 V con una velocidad máxima de 9960 rpm sin carga, y de 8800 rpm con carga nominal de 5mN m.
    - Un sistema de protección que desactiva los motores cuando se presenta una sobrecarga de corriente.

## 5. 🔧➡️🚀 Procedimiento

### 5.1. 🌟🐢🤖 Primera interacción con el robot

Ejecuté el modo `random walker` incorporado en el firmware del Kobuki siguiendo los siguientes pasos:

1. Asegúrese de que el robot esté sobre el suelo en una zona sin caídas ni desniveles pronunciados.
2. Encienda el robot.
3. En los siguientes 3 segundos después de encenderlo, presione el botón `B0` y manténgalo presionado durante 2 segundos.
4. El segundo LED programable comenzará a parpadear y el robot empezará a deambular.
5. Observe el comportamiento del Kobuki y preste atención a los sensores que utiliza en este primer programa.

### 5.2. 🧰🌐🤖 Configuración de ROS Noetic

Oficialmente, la plataforma Kobuki no ha sido actualizada para funcionar con versiones posteriores a ROS Kinetic. Sin embargo, existe un método que permite utilizarla con ROS Noetic sin inconvenientes.

1. Cree un Workspace y ubiquese en el directorio `/src`.

```sh
mkdir -p ~/Kobuki_ws/src
cd ~/Kobuki_ws/src
```

2. Clone los repositorios `https://github.com/yujinrobot/kobuki` y `https://github.com/yujinrobot/yujin_ocs`. Del repositorio `yujin_ocs` solo clone los directorios `yocs_cmd_vel_mux`, `yocs_controllers` y `yocs_velocity_smoother`.

```sh
git clone https://github.com/yujinrobot/kobuki
git clone --filter=blob:none --no-checkout https://github.com/yujinrobot/yujin_ocs.git
cd yujin_ocs
git sparse-checkout init --cone
git sparse-checkout set yocs_cmd_vel_mux yocs_controllers yocs_velocity_smoother
git checkout
```

3. Instalé el paquete del sistema `liborocos-kdl-dev`, el cual reemplaza al paquete de ROS Kinetic `python-orocos-kdl` (también conocido como `orocos2`), que ya no está disponible en ROS Noetic.

>[!WARNING]
>En esta versión de ROS se optó por depender directamente de la versión del sistema, en lugar de mantener enlaces (bindings) propios en Python. Por lo tanto, esta instalación satisface correctamente la dependencia requerida por paquetes como kobuki_testsuite, aunque rosdep pueda mostrar un error que puede ignorarse con seguridad.


```sh
cd
sudo apt update
sudo apt install liborocos-kdl-dev
```

4. Ubiquese en el workspace y realice la instalación final de los paquetes y sus dependencias.

```sh
cd ~/kobuki_ws
rosdep install --from-paths src --ignore-src -r -y
```

5. Compile el workspace y cargue las variables de entorno.

```sh
catkin_make
source devel/setup.bash
```

### 5.3. 🐢🌐🤖 Usando el robot kuboki mediante ROS Noetic

1. Conecté el robot Kobuki al computador mediante el cable USB.
2. Lance el archivo `minimal.launch` del paquete `kobuki_node`. Este archivo `launch` se utiliza para lanzar el Kobuki de forma básica y con un mínimo de configuración. Si todo funciona correctamente y no aparece ningún error, significa que la configuración fue exitosa.

>[!TIP]
> `--screen` es una opción que se agrega al comando `roslaunch` para mostrar los mensajes de salida (logs) en la pantalla (es decir, en la terminal desde donde ejecutas el comando).

```sh
roslaunch kobuki_node minimal.launch --screen
```

### 5.4. 🔧📊🖥️🤖 Diagnósticos con Robot Monitor GUI

Podemos acceder a una pantalla de diagnóstico de la base Kobuki y leer su estado a través de un paquete denominado ***Robot Monitor***. Esta herramienta es útil para observar, analizar e informar sobre problemas con el hardware, dispositivos o controladores.

1. Instalé el paquete correspondiente de `Robot Monitor`.

```sh
sudo apt-get install ros-noetic-rqt-robot-monitor
```

2. Ejecute la interfaz gráfica.

```sh
rosrun rqt_robot_monitor rqt_robot_monitor
```

3. Interactué con el robot y verifiqué los siguientes aspectos:

    - Estado de la batería.

    - Estados de todos los sensores y los mensajes que se activan cuando son alterados.

    - Entradas del robot Kobuki.

### 5.5. 🧑‍💻🐢🌐🤖 Interactuando con el robot mediante ROS.

1. Vea qué tópicos están disponibles, entre los cuales destacan `/mobile_base/commands/*`, que recibe comandos para controlar partes del robot; `/mobile_base/events/*`, que agrupa todos los eventos generados por los sensores; y `/mobile_base/sensors/*`, que contiene las lecturas continuas de los sensores.

```sh
rostopic list
```

2. Coloque un `sniffer` para visualizar los mensajes del sensor `bumper`. Al oprimir el `bumper` en el robot observe cómo cambia el mensaje mostrado en pantalla.

```sh
rostopic echo /mobile_base/events/bumper
```

3. Coloque un `sniffer` para visualizar los mensajes del sensor `wheel drop`. Observe el funcionamiento del sistema `wheel drop`, en el que el mensaje cambiará cada vez que se levanten las llantas y estas bajen por su propio peso.

```sh
rostopic echo /mobile_base/events/wheel_drop
```

4. Coloque un `sniffer` para visualizar los mensajes del sensor `IMU`.

```sh
rostopic echo /mobile_base/sensors/imu_data
```

5. Cambie el estado de uno de los LEDs. Tenga en cuenta que los valores que estos pueden tener son:
    - 0 - apagado
    - 1 - verde
    - 2 - naranja
    - 3 - rojo

```sh
rostopic pub /mobile_base/commands/led1 kobuki_msgs/Led "value: 1"
rostopic pub /mobile_base/commands/led2 kobuki_msgs/Led "value: 3"
```

1. Genere un sonido. Tenga en cuenta que los valores que estos pueden tener son:

    - 0 – encender
    - 1 – apagar
    - 2 – inicio de recarga
    - 3 – botón presionado
    - 4 – sonido de error
    - 5 – inicio de limpieza
    - 6 – fin de limpieza

```sh
rostopic pub /mobile_base/commands/sound kobuki_msgs/Sound "value: 6"
```

7. Revise que tipo de mensaje utiliza `/mobile_base/commands/velocity`.

>[!NOTE]
>Como se pudo observar, el tópico `/mobile_base/commands/velocity` espera un mensaje de tipo `geometry_msgs/Twist`, y es el que permite modificar la velocidad de rotación y el desplazamiento lineal del robot.


```sh 
rostopic type /turtle1/cmd_vel
```

8. Mueva el robot con una baja velocidad.

```sh
rostopic pub /mobile_base/commands/velocity geometry_msgs/Twist "linear:
x: 0.1
y: 0.0
z: 0.0
angular:
x: 0.0
y: 0.0
z: 0.0"
```

9. Lance el `launch` para la teleoperación básica mediante el teclado.

```sh
roslaunch kobuki_keyop safe_keyop.launch --screen
```

## 6. 📚🗄️ Referencias

**[1]** M. Quigley, K. Conley, B. Gerkey, J. Faust, T. Foote, J. Leibs, R. Wheeler, and A. Ng, "ROS: An open-source robot operating system," vol. 3, Jan. 2009.

**[2]** K. Team, *Kobuki User Guide*, 2017.

**[3]** S. Wiznitzer, "Kobuki on ROS Noetic," [Online]. Available: [https://github.com/yujinrobot/kobuki/issues/427#issuecomment-779439686](https://github.com/yujinrobot/kobuki/issues/427#issuecomment-779439686).

**[4]** ROS, "Kobuki Tutorials," [Online]. Available: [http://wiki.ros.org/kobuki/Tutorials](http://wiki.ros.org/kobuki/Tutorials).
