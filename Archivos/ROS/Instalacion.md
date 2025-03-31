<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de Software</h1>

<h2>Instalación de ROS Noetic</h2>

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
- [1. 🧰 Herramientas Necesarias](#1--herramientas-necesarias)
  - [1.1. 🔭🛠️ Equipos](#11-️-equipos)
  - [1.2. 🖥️💾 Software](#12-️-software)
- [2. 🔧️➡️🚀 Procedimiento](#2-️️-procedimiento)
- [4. 📚🗄️ Referencias](#4-️-referencias)

</details>

---

<h1> 🖥️📂 Guía 0 - Instalación de ROS Noetic</h1>

## 1. 🧰 Herramientas Necesarias

### 1.1. 🔭🛠️ Equipos

  - Computador.

### 1.2. 🖥️💾 Software

  - Navegador web.
  - Terminal

## 2. 🔧️➡️🚀 Procedimiento

1. Abra una nueva terminal.
2. Configure su source.list para que su comptador acepte el software de packages.ros.org

```sh
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
```

3. Configure sus llaves

```sh
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
```

4. Instale de la versión completa

```sh
sudo apt install curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
```

5. Configure su entorno.

    - Bash
    ```sh
    echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
    source ~/.bashrc
    ```
    - zsh
    ```sh
    echo "source /opt/ros/noetic/setup.zsh" >> ~/.zshrc
    source ~/.zshrc
    ```

6. Instale las dependencias para construir paquetes.

```sh
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
```

7. Inicialice rosdep.

```sh
sudo rosdep init
rosdep update
```

8. Verifique la intalacion viendo la versión intalada.

```sh
rosversion -d
```

>[!NOTE]
>Una vez que instalas ROS, notarás que catkin funciona como un compilador de paquetes. El comando catkin_make compila todo el espacio de trabajo, lo cual no supone un problema si solo tienes unos pocos paquetes ligeros. Sin embargo, si tu espacio de trabajo contiene muchos paquetes, es recomendable instalar catkin_build, ya que permite compilarlos de forma independiente.
>```sh
>sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list'
>wget http://packages.ros.org/ros.key -O - | sudo apt-key add -
>sudo apt-get update
>sudo apt-get install python3-catkin-tools
>```


## 4. 📚🗄️ Referencias

**[1]** P. Cárdenas, "Intro_Ros", 2023. [Online]. Available: [https://github.com/PedroFCardenas/Intro_Ros](https://github.com/PedroFCardenas/Intro_Ros)

**[2]** ROS.org , "Ubuntu install of ROS Noetic", 2023. [Online]. Available: [https://wiki.ros.org/noetic/Installation/Ubuntu](https://wiki.ros.org/noetic/Installation/Ubuntu)