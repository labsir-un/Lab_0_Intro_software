<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de Software</h1>

<h2>Guía CoppeliaSim - Intercambio de información entre Matlab y CoppeliaSim</h2>

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
  - [4.1. 🔄📍🧭 Cambio de la posición y de la orientacion de un objeto](#41--cambio-de-la-posición-y-de-la-orientacion-de-un-objeto)
  - [4.2. 🔎📍🧭 Leyendo datos de otro objeto](#42--leyendo-datos-de-otro-objeto)
  - [4.3. 📏🏎️ Obteniendo la velocidad lineal de un objeto](#43-️-obteniendo-la-velocidad-lineal-de-un-objeto)
</details>

---

<h1>🤖🔄📈 Guía CoppeliaSim - Intercambio de información entre Matlab y CoppeliaSim </h1>

## 1. 🎯 Objetivo

- Crear una aplicación simple que utilice el intercambio de información entre las aplicaciones MATLAB y CoppeliaSim en ambiente académico.

## 2. 🧰 Herramientas Necesarias

### 2.1. 🔭🛠️ Equipos

  - Computador.

### 2.2. 🖥️💾 Software

  - CoppeliaSim Edu V4.9.0.
  - MATLAB (Debe contar con una licencia personal, de aula o de campus).

## 3. 🔧️➡️🚀 Procedimiento

1. Abra MATLAB.
2. Descargue el script [pose.m](./../scripts/pose.m) y guardelo en su carpeta de trabajo.

>[!NOTE]
>Para consultar la referencia de los comandos de la API de CoppeliaSim con MATLAB consulte [Legacy remote API functions (Matlab)](https://manual.coppeliarobotics.com/en/remoteApiFunctionsMatlab.htm).

3. Organice las ventanas para visualizar MATLAB, el script y la ventana de CoppeliaSim.

<div align="center">
  <img src="https://imgur.com/UPzC0rU.png" alt="Ventana_organizada" width="600px">
</div>

4. Inicie la simulación en CoppeliaSim con el ícono <img src="https://imgur.com/H7ItfPW.png" alt="icono_run" width="20px">.
5. Corra el script *"pose.m"* en MATLAB.

>[!WARNING]
> Si MATLAB solicita cambio de carpeta, hacer clic en "*Aceptar*".

6. En el *"Command Window"* de MATLAB vera un mensaje con la posición y orientación del objeto ***Caja1***.

<div align="center">
  <img src="https://imgur.com/vIJ6WGi.png" alt="Ventana_organizada" width="600px">
</div>

7. Detenga la simulación en CoppeliaSim con el ícono <img src="https://imgur.com/OerwXkg.png" alt="icono_stop" width="20px">

## 4. 🦾🏋️ Ejercicios

### 4.1. 🔄📍🧭 Cambio de la posición y de la orientacion de un objeto

1. Seleccione el ícono <img src="https://imgur.com/LgUi1Ka.png" alt="icono_posicion" width="20px"> y use los comandos para cambiar la posición del objeto.  

2. Seleccione el ícono <img src="https://imgur.com/C4sfn1q.png" alt="icono_orientacion" width="20px"> y cambie la orientación del objeto.  

3. Inicie la simulación en CoppeliaSim, ejecute el script de MATLAB y detenga la simulación en CoppeliaSim.  

4. Verifique que, en cada caso, la información mostrada en la ventana de MATLAB corresponda a las propiedades de posición y orientación de **Caja1** en la escena de CoppeliaSim.


### 4.2. 🔎📍🧭 Leyendo datos de otro objeto

1. Cree otro objeto en CoppeliaSim.  
2. Guarde una copia del script con un nombre diferente y modifíquelo para que identifique el *handle* del nuevo objeto.  
3. Lea la posición y orientación de ambos objetos y muéstrelas en la ventana *"Command Window"* de MATLAB.

### 4.3. 📏🏎️ Obteniendo la velocidad lineal de un objeto
 
1. Cree una nueva escena y guárdela. 
>[!NOTE]
>Si la guarda en otra carpeta, recuerde copiar en esa carpeta los archivos *"remApi.m"*, *"remoteApiProto.m"* y *"remoteApi.dll"*.  
2. En el arbol de trabajo de la ventana *"Model browser"* de CoppeliaSim, seleccione *Robots* > *non-mobile*.  
3. En la parte inferior de la anterior ventana, dentro del conjunto de manipuladores, busque *"MTB robot"*.  
4. Arrastre el modelo con el mouse y suéltelo en la escena.
5. En la ventana *"Scene Hierarchy"*, expanda el árbol del objeto MTB. 
6. Abra el *script* haciendo doble clic en el ícono <img src="https://imgur.com/aINJ7cn.png" alt="icono_script" width="20px"> debajo del objeto *"MTB robot"*. Esto abrirá la ventana *"Simulation script "/MTB/script""*.  
7. Debajo de la primera línea `function sysCall_init()`, agregue el siguiente comando:

```lua
    simExtRemoteApiStart(19999)
```
8. En la ventana *"Scene Hierarchy"*, localice el objeto *"Rectangle"*, que corresponde a la pieza manipulada por MTB.
9. Utilice el script de MATLAB y desarrolle un nuevo algoritmo que lea la velocidad lineal de *"Rectangle"* mediante el comando `simxGetObjectVelocity` y la muestre en la ventana *"Command Window"* de MATLAB.
