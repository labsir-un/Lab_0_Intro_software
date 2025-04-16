<div align="center">
<picture>
    <source srcset="https://imgur.com/5bYAzsb.png" media="(prefers-color-scheme: dark)">
    <source srcset="https://imgur.com/Os03JoE.png" media="(prefers-color-scheme: light)">
    <img src="https://imgur.com/Os03JoE.png" alt="Escudo UNAL" width="350px">
</picture>

<h3>Curso de Fundamentos de Robótica Móvil</h3>

<h1>Herramientas de Software</h1>

<h2>Uso de la terminal</h2>

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
  - [1.1. 🕵🏼💻 ¿Qué es la terminal?](#11--qué-es-la-terminal)
- [2. 🧰 Herramientas Necesarias](#2--herramientas-necesarias)
  - [2.1. 🔭🛠️ Equipos](#21-️-equipos)
  - [2.2. 🖥️💾 Software](#22-️-software)
- [3. ⌨️💻 Comandos](#3-️-comandos)
  - [3.1. 🧮📁 Operaciones con directorios](#31--operaciones-con-directorios)
  - [3.2. 🤚🏼📂📄 Manipulación de archivos y directorios](#32--manipulación-de-archivos-y-directorios)
  - [3.3. 🤚🏼📝 Manipulación de archivos de texto plano](#33--manipulación-de-archivos-de-texto-plano)
  - [3.4. 🔍⌨️❓ Exploración de comandos y ayuda dentro de la terminal](#34-️-exploración-de-comandos-y-ayuda-dentro-de-la-terminal)
    - [3.4.1. 🃏 Wildcards (Comodines)](#341--wildcards-comodines)
    - [3.4.2. 🔤🔢🃏 Clases dentro de los Wildcards](#342--clases-dentro-de-los-wildcards)
  - [3.5. 🎛️🔄️🖥️ Redirecciones I/O y operadores de control](#35-️️️-redirecciones-io-y-operadores-de-control)
  - [3.6. 🛜📡 Red](#36--red)
- [4. ⌨️Atajos del teclado](#4-️atajos-del-teclado)
- [5. 💾🖥️ Programas](#5-️-programas)
- [6. 🛠️🎨🖥️ Personalización de tu terminal](#6-️️-personalización-de-tu-terminal)
- [7. 📚🗄️ Referencias](#7-️-referencias)

</details>

---

<h1> 📝💻El uso de la terminal </h1>

## 1. 📖 Introducción

### 1.1. 🕵🏼💻 ¿Qué es la terminal?

La terminal es una interfaz que permite interactuar con el sistema operativo mediante una línea de comandos. Cuando hablamos de una línea de comandos, nos referimos a una shell, que es el programa encargado de interpretar y ejecutar los comandos ingresados por el usuario.

En este sentido, la terminal actúa como una interfaz para la shell, permitiendo enviar instrucciones al sistema, las cuales son traducidas a lenguaje de máquina para ejecutar diversas acciones en el computador, como la gestión de archivos, la configuración del sistema y la ejecución de programas.

## 2. 🧰 Herramientas Necesarias

### 2.1. 🔭🛠️ Equipos

  - Computador.

### 2.2. 🖥️💾 Software

  - Ubuntu 20.04.
  - Terminal

## 3. ⌨️💻 Comandos

Un comando es una instruccion que el usuario escribe en la línea de comandos para que el sistema operativo ejecute una acción específica. Estos comandos permiten realizar diversas tareas, como navegar entre carpetas, gestionar archivos, instalar software y configurar el sistema.

### 3.1. 🧮📁 Operaciones con directorios

Este tipo de comandos permiten el navergar entre directorios, crearlos o conocer los elementos de estos.

| **Comando**       | **Descripción** |
|-------------------|---------------|
| `pwd`            | Imprime el directorio actual. |
| `mkdir <nombre_directorio>`     | Crea un directorio llamado con el bombre dado en el parametro. |
| `cd <nombre_directorio>`        | Cambia al directorio con el nombre ingresado al parametro <nombre_directorio>. |
| `cd ../..`       | Regresa dos niveles en la jerarquía de directorios. |
| `cd`             | Cambia al directorio **home** del usuario. |
| `ls`             | Muestra los archivos y directorios en el directorio actual. |
| `tree </ruta>`     | Muestra todos los archivos y directorios anidados dentro de `</ruta>`, a cualquier nivel de profundidad. |
| `tree -L 2 .`    | Muestra todos los archivos y directorios dentro del directorio actual hasta **dos niveles** de profundidad. |

ls es un comando el cual permite usar diferentes opciones o flags con las cuales modificamos el comportamiento del comonado estas se muestran a continuación.

| **Opción**  | **Descripción** |
|------------|---------------|
| `-a`       | Muestra todos los archivos, incluyendo los ocultos. |
| `-R`       | Lista los archivos y directorios de manera recursiva. |
| `-r`       | Ordena la lista en orden inverso. |
| `-t`       | Ordena mostrando primero los archivos modificados más recientemente. |
| `-S`       | Ordena los archivos por tamaño

### 3.2. 🤚🏼📂📄 Manipulación de archivos y directorios

| **Comando**              | **Descripción** |
|--------------------------|---------------|
| `touch <nombre_archivo>`         | Crea un nuevo archivo con el nombre `<nombre_archivo>`. |
| `file <nombre_archivo>`       | Muestra las características del archivo `<nombre_archivo>`. |
| `cp <nombre_archivo> <ruta_de_destino>`     | Copia el archivo `<nmombre_archivo>` a la ruta `<ruta_de_destino>`. |
| `cp -r <nombre_directorio> <directorio_de_destino>`    | Copia el directorio `<nombre_directorio>` y su contenido a `<directorio_de_destino>`. |
| `mv <nombre_archivo> <ruta_de_destino>`     | Mueve el archivo `<nombre_archivo>` a la ruta `<ruta_de_destino>`. |
| `mv <nombre_archivo> <nuevo_nombre_archivo>`      | Renombra el archivo `<nombre_archivo>` a `<nuevo_nombrenombre_archivo>`. |
| `rm <nombre_archivo>`             | Elimina el archivo `<nombre_archivo>`. |
| `rm -ri <nombre_directorio>`         | Elimina el directorio `<nombre_directorio>` y su contenido de forma interactiva. |
| `rm -r <nombre_directorio>`          | Elimina el directorio `<nombre_directorio>` y su contenido de forma directa. |
| `ln -s <nombre_archivo> <nombre_link>` | Crea un enlace simbólico al archivo `<nombre_archivo>`. |
| `open <nombre_archivo>`       | Abre el archivo con el programa predeterminado (MacOS). |
| `xdg-open <nombre_archivo>`   | Abre el archivo con el programa predeterminado (mayoría de sistemas Linux). |

### 3.3. 🤚🏼📝 Manipulación de archivos de texto plano

| **Comando**               | **Descripción** |
|---------------------------|---------------|
| `head <nombre_archivo>`           | Muestra las primeras 10 líneas del archivo `<nombre_archivo>`. |
| `head -n 20 <nombre_archivo>`     | Muestra las primeras 20 líneas del archivo `<nombre_archivo>`. |
| `tail <nombre_archivo>`           | Muestra las últimas 10 líneas del archivo `<nombre_archivo>`. |
| `tail -n 20 <nombre_archivo>`     | Muestra las últimas 20 líneas del archivo `<nombre_archivo>`. |
| `less <nombre_archivo>`           | Explora el contenido de `<nombre_archivo>` con paginación. |
| `cat <nombre_archivo_1> <nombre_archivo_2>`         | Concatena el contenido de `<nombre_archivo_1>` y `<nombre_archivo_2>` y lo muestra en la terminal. |

### 3.4. 🔍⌨️❓ Exploración de comandos y ayuda dentro de la terminal

| **Comando**                  | **Descripción** |
|------------------------------|---------------|
| `man <comando>`                | Muestra el manual de usuario del comando. |
| `help <comando>`               | Muestra ayuda para el comando (solo funciona en Bash). |
| `which <comando>`              | Muestra la ruta del ejecutable del comando. |
| `whatis <comando>`             | Muestra brevemente la función del comando. |
| `alias aliasname="<comando>"`  | Crea un alias para el comando. |

#### 3.4.1. 🃏 Wildcards (Comodines)
| **Wildcard**        | **Descripción** |
|---------------------|---------------|
| `*`                | Coincide con cualquier carácter o secuencia de caracteres. |
| `?`                | Coincide con cualquier carácter individual. |
| `[caracteres]`     | Coincide con cualquier carácter dentro del conjunto. |
| `[!caracteres]`    | Coincide con cualquier carácter que **no** esté en el conjunto. |
| `[[:clase:]]`      | Coincide con cualquier carácter de una **clase** específica. |

#### 3.4.2. 🔤🔢🃏 Clases dentro de los Wildcards
| **Clase**          | **Descripción** |
|--------------------|---------------|
| `[:alnum:]`       | Coincide con cualquier carácter alfanumérico. |
| `[:alpha:]`       | Coincide con cualquier carácter alfabético. |
| `[:digit:]`       | Coincide con cualquier número. |
| `[:lower:]`       | Coincide con cualquier letra minúscula. |
| `[:upper:]`       | Coincide con cualquier letra mayúscula. |

### 3.5. 🎛️🔄️🖥️ Redirecciones I/O y operadores de control 

| **Comando**                | **Descripción** |
|----------------------------|---------------|
| `<comando> < <nombre_archivo>`        | Redirige el **input** de un comando desde un archivo. |
| `<comando> > <nombre_archivo>`        | Redirige la **salida** de un comando a un archivo (⚠️ sobrescribe el archivo). |
| `<comando> >> <nombre_archivo>`       | Concatena la salida de un comando a un archivo. Si no existe, lo crea. |
| `<comando> 2> <nombre_archivo>`     | Redirige la salida de error de un comando al archivo `<nombre_archivo>`. |
| `<comando_1> \| <comando_2>`      | Redirige la salida de `<comando_1>` a la entrada de `<comando_2>` (pipeline). |
| `<comando_1>; <comando_2>`       | Ejecuta `<comando_1>`, luego `<comando_2>`, sin importar si el primero tuvo éxito. |
| `<comando_1> & <comando_2>`      | Ejecuta `<comando_1>` y `<comando_2>` de manera **asíncrona**. |
| `<comando_1> && <comando_2>`     | Ejecuta `<comando_2>` **solo si** `<comando_1>` se ejecutó con éxito. |
| `<comando_1> \|\| <comando_2>`     | Ejecuta `<comando_1>`, y si falla, ejecuta `<comando_2>`. |

### 3.6. 🛜📡 Red

| Comando         | Descripción |
|---------------|-----------------------------------------------------|
| `ifconfig`    | Muestra la información de las interfaces de red. |
| `ip a`        | Alternativa moderna a `ifconfig`, muestra direcciones IP y estado. |
| `ping [IP/Dominio]` | Verifica la conectividad con un host enviando paquetes ICMP. |
| `wget [URL]`  | Descarga archivos o recursos desde una URL. |
| `curl -O [URL]` | Alternativa a `wget`, útil para descargar archivos. |
| `netstat -i`  | Muestra las interfaces de red activas y su estado. *(Obsoleto, usar `ip -s link`)* |
| `ss -tulnp`   | Alternativa moderna a `netstat`, muestra puertos abiertos y conexiones activas. |

## 4. ⌨️Atajos del teclado

| **Atajo**                  | **Descripción** |
|----------------------------|---------------|
| `Tab`                      | Autocompleta comandos y nombres de archivos. |
| `↑ / ↓ (Flechas arriba y abajo)` | Permite navegar entre comandos previos. |
| `CTRL + C`                 | Termina el proceso de un comando en la terminal. |
| `CTRL + D`                 | Finaliza el input de un comando. |
| `CTRL + A`                 | Mueve el cursor al inicio de la línea. |
| `CTRL + E`                 | Mueve el cursor al final de la línea. |
| `CTRL + L`                 | Limpia la pantalla de la terminal. |
| `CTRL + R`                 | Realiza una búsqueda inversa en el historial de comandos. |
| `CTRL + ALT + T`           | Abre una nueva terminal. |
| `CTRL + Shift + C`         | Copia texto desde la terminal. |
| `CTRL + Shift + V`         | Pega texto en la terminal. |

## 5. 💾🖥️ Programas

Como se menciono anterior mente la terminal va más alla de ser una linea de comandos es asi que existen difernetes programas que pueden ayudar en el flujo de trabajo cuando se esta usando la terminal. Aca algunos de esos:

- *CopyQ:* es un administrador avanzado del portapapeles que permite almacenar, buscar y editar contenido copiado.
```sh
sudo apt install copyq
```

- *Nautilus:* Es una herramienta gráfica para navegar, copiar, mover y gestionar archivos y carpetas de manera intuitiva.
```sh
sudo apt install nautilus
```

- *Nano:* Es el editor de texto de GNU, puede ser util para modificar archivos de texto plano. Viene con Ubuntu y esta es su [documentación](https://www.nano-editor.org/). 

Algunos progrmas que le dan dinamismo al terminal son:

- *cowsay:* es una herramienta clásica en Linux que muestra un mensaje con una vaca ASCII u otros personajes.
```sh
sudo apt install cowsay
```

- *lolcat*: Colorea el texto que se le pasa como entrada, ideal para combinar con cowsay
```sh
sudo apt install lolcat
```
- *sl*: Un tren animado que aparece cuando accidentalmente escribes `sl` en lugar de `ls`.
```sh
sudo apt install sl
``` 
- *cmatrix*: Una animación de estilo "Matrix" en la terminal.
```sh
sudo apt install cmatrix
``` 

<div align="center">
  <img src="https://imgur.com/U1QSkVT.png" alt="Cowsay_hola" width="600px">
</div>

## 6. 🛠️🎨🖥️ Personalización de tu terminal

Personalizar la terminal permite estar más comodos con ella y usarla de forma fluida con nuestro ritmo de trabajo [aca](https://www.edevars.com/blog/personalizar-terminal) encontraras como hacerlo.

- [Terminal Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Tilix](https://gnunn1.github.io/tilix-web/)

## 7. 📚🗄️ Referencias

**[1]** Platzi, "Command Line Cheat Sheet," Platzi, Available: [https://static.platzi.com/media/public/uploads/command-line-cheat-sheet_93c5cbb9-8acf-423e-a92e-351a461f15ae.pdf](https://static.platzi.com/media/public/uploads/command-line-cheat-sheet_93c5cbb9-8acf-423e-a92e-351a461f15ae.pdf), [Accessed: 30-Mar-2025].

