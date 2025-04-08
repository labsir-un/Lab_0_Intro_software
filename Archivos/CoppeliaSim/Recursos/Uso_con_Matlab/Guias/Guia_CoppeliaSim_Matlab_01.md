<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de Software</h1>

<h2>Guía CoppeliaSim - Conexión Matlab y CoppeliaSim</h2>

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
  - [3.1. 🏗️🛠️🤖 Configuración de la escena](#31-️️-configuración-de-la-escena)
  - [3.2. 🛠️❓🔍 Prueba de conexión con Matlab](#32-️-prueba-de-conexión-con-matlab)
</details>

---

<h1>📡🔄📊 Guía CoppeliaSim - Conexión Matlab y CoppeliaSim </h1>

## 1. 🎯 Objetivo

- Crear una escena simple en CoppeliaSim y probar la conexión entre MATLAB y CoppeliaSim.

## 2. 🧰 Herramientas Necesarias

### 2.1. 🔭🛠️ Equipos

  - Computador.

### 2.2. 🖥️💾 Software

  - CoppeliaSim Edu V4.9.0.
  - MATLAB (Debe contar con una licencia personal, de aula o de campus).

>[!IMPORTANT]
> Se recomienda crear una carpeta de trabajo, por ejemplo: `C:\...\Documents\vrep`, y dentro de ella, una subcarpeta específica para el ejercicio, como `C:\...\Documents\vrep\prog_01` (o cualquier otro nombre que prefiera).

## 3. 🔧️➡️🚀 Procedimiento

### 3.1. 🏗️🛠️🤖 Configuración de la escena

1. Abra CoppeliaSim.

2. Agrege un ***cuboid*** para esto dar clic derecho en el espacio vacío de la ventana *"Scene hierarchy"*, seleccionar *Add* > *Primitive Shape* > *Cuboid...*.

<div align="center">
  <img src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExeWtzdzQxenJpZGM2YXNmNHRuMGkwOHo0bmFleGNlcW94dmFrNzY2OCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/8lJPWmipttJEF8WxgK/giphy.gif" alt="Crear cuboid" width="600px">
</div>

3. En la ventana *"Primitive cuboid"*, definir dimensiones y hacer clic en *"OK"* (ejemplo: x= 0.1 m, y= 0.2 m, z= 0.3 m).

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExdjF1OXV2NG4xZG8yMjUwOXBiMDhoaG1sdjE4YzZ5NWdwZWp6MGZ5MSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/D1H6YHQ49SNlOjDWAN/giphy.gif" alt="Dimensiones cuboid" width="600px">
</div>

4. En la escena aparecerá el paralelepípedo con las dimensiones definidas. Para renombrarlo, hacer doble clic en su nombre en el arbol de la escena y escribir el nuevo nombre. Presionar Enter para guardar los cambios.

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExang3cG8weDBsZ2d2dDRzbmttam1zdmtlamZ2bWVobGE1dHRkeWNrZCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/qf9FFqNg0MN3uEoFL2/giphy.gif" alt="Cambiar nombre" width="600px">
</div>

5. Guarde la escena con el nombre *"Esc_01.ttt"* en la carpeta de trabajo.

<div align="center">
  <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExMzBpdWZ4anhkYWczM3pqbGFrenJtOHoyaTcycjJ0N2pzajB1MGpnYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/KHT9AF9Kj1SpAKJ4oG/giphy.gif" alt="Guardar_escena" width="600px">
</div>

6. En el árbol del proyecto, haz clic derecho sobre el cuboide. Esto desplegará un menú. Selecciona: *Add* > *Script* > *simulation script* > *Non threaded* > *Lua*.

<div align="center">
  <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExMzBpdWZ4anhkYWczM3pqbGFrenJtOHoyaTcycjJ0N2pzajB1MGpnYiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/KHT9AF9Kj1SpAKJ4oG/giphy.gif" alt="Agregar_script" width="600px">
</div>


7. Aparecerá el ícono <img src="https://imgur.com/aINJ7cn.png" alt="icono_script" width="20px"> anidado al nombre del objeto ***"Caja1"***.

<div align="center">
  <img src="https://imgur.com/5SDOxkP.png" alt="Script_anidado" width="300px">
</div>


8. Abra el script con doble clic en el ícono <img src="https://imgur.com/aINJ7cn.png" alt="icono_script" width="20px">. Se abrirá la ventana *"Simulation script "/script""*. Añade el siguiente comando debajo de la primera línea function `sysCall_init()`:

```m
simExtRemoteApiStart(19999)
```

<div align="center">
  <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExNXpiaXNhbm91ZDV5cWd1Mzdvbm9jeGdweHVkeXJ5ZXNoaTB6NndwNCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/kORFDDnu1hXgFWWogF/giphy.gif" alt="Agregar_comando" width="600px">
</div>

9. Cierre la ventana del script; no es necesario guardarlo.

<div align="center">
  <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExMmxhY2U5c3lnaGI4bmYzZzlmZ3ZscTBlZWZibmUxM2RtZ3k5emxmYyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/jD6lUeSpKHYnXhyH6v/giphy.gif" alt="Guardar_script" width="600px">
</div>

10.  Busque los archivos .m necesarios para MATLAB en la carpeta `C:\Program Files\CoppeliaRobotics\CoppeliaSimEdu\programming\legacyRemoteApi\remoteApiBindings\matlab\matlab`. Copia los archivos *"remApi.m"*, *"remoteApiProto.m"* y *"simpleTest.m"* a su carpeta de trabajo.

<div align="center">
  <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExMDI4YmozbXE4eTZoNmFmZnV4Y2h6Z2J0bnkzZHhmeHcyMmZzMmdqZiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/bY576sIOKyWvPEGGGf/giphy.gif" alt="Archivos_m" width="600px">
</div>


11.  Busque el archivo .dll necesario para el funcionamiento de la API en CoppeliaSim en la carpeta `C:\Program Files\CoppeliaRobotics\CoppeliaSimEdu\programming\legacyRemoteApi\remoteApiBindings\lib\lib\Windows`. Copia el archivo *"remoteApi.dll."* a su carpeta de trabajo.

<div align="center">
  <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExOXZ1cDQwOGhxbjAyNGpva3ZmM3o5dW4wNzJyODF6cGltdDVreWg5eCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/IDXouIxzHc1K0VDpmn/giphy.gif" alt="Archivos_m" width="600px">
</div>

> [!NOTE]  
> El archivo *"simpleTest.m"* no es necesario para generar la conexión, pero se usa para la prueba de conexión que se hará a continuación.  
> Los demás archivos **siempre** deben copiarse en cada carpeta de trabajo donde se haya guardado la escena *.ttt* para generar la conexión.


### 3.2. 🛠️❓🔍 Prueba de conexión con Matlab

1. Abra MATLAB.
2. Abra la carpeta de trabajo y abra *"simpleTest.m"*.

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExbnc0ZDI2cHN3a3dwZHZ3czgxMjJpbTYyeWNva3AyeGhqeWhzdG1jZiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/nrR7UbMtZ05Xe9i4KX/giphy.gif" alt="Abrir archivo en MATLAB" width="600px">
</div>

3. Organice las ventanas para visualizar MATLAB, el script y la ventana de CoppeliaSim.

<div align="center">
  <img src="https://imgur.com/7kFQr6h.png" alt="Ventanas organizadas" width="600px">
</div>

4. Inicie la simulación en CoppeliaSim con el ícono <img src="https://imgur.com/H7ItfPW.png" alt="icono_run" width="20px">.

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExY2hzcHMxMXF0NG1kbjN4MTQzNzUydDE0NDdqbWxrMThzaGlneTkxbiZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/9m0cHZQTmHK5plughu/giphy.gif" alt="Iniciar CoppeliaSim" width="600px">
</div>

5. Ejecute el script en MATLAB.

<div align="center">
  <img src="https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExejZvbjJocTZwZ3plM2gwZDI3aTRmeDFwdmZsNWNlaGRseW9tbDN6dyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/32Xpl8gBvpU5UWGMhY/giphy.gif" alt="Ejecutar script en MATLAB" width="600px">
</div>

>[!WARNING]
> Si MATLAB solicita cambio de carpeta, hacer clic en "*Aceptar*".

>[!CAUTION]
> Si la conexión falla, aparecerá el mensaje *"Failed connecting to remote API server"* en MATLAB.

>[!NOTE]
> Si la conexión es correcta, MATLAB mostrará el número de objetos en la escena y un flujo de valores del tipo `Mouse position x: ###`, que cambiará al mover el mouse dentro de la escena de CoppeliaSim.

6. Detenga la simulación en CoppeliaSim con el ícono <img src="https://imgur.com/OerwXkg.png" alt="icono_stop" width="20px"> y cerrar *"simpleTest.m"*.

<div align="center">
  <img src="https://media4.giphy.com/media/v1.Y2lkPTc5MGI3NjExYmR0eThlOWI1cGpvM3UxNW9qenBpMG5tNWUwdTEweGRmZ3ZoNHpxeSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/dxJAdkAF1h5PJrIn4X/giphy.gif" alt="Parar_simulación" width="600px">
</div>

