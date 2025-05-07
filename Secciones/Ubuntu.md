# 🐧🖥️🦭 Ubuntu

Para trabajar con robots móviles y su simulación, es altamente recomendable utilizar una distribución de Linux, ya que muchas herramientas especializadas, como ROS (Robot Operating System), solo son compatibles con este sistema operativo. Ubuntu 20.04 es una opción ampliamente utilizada en la comunidad de robótica debido a su estabilidad y compatibilidad con ROS Noetic, así como con otras herramientas esenciales para el desarrollo y control de robots. En la sección [⚙️🧰 Algunas herramientas utiles](./Herramientas.md), se presentarán algunas herramientas clave para facilitar el uso de Ubuntu 20.04, permitiendo una gestión más eficiente del sistema y optimizando el flujo de trabajo en la programación y simulación de robots.

## 🖥️💾🧑🏼‍💻 Formas de usar linux

Para usar correr un sistemas linux en nuestra computadora tenemos diversas formas de hacerlo que se presentaran a continuación:

| Método                              | Ventajas | Desventajas |
|-------------------------------------|----------|-------------|
| **Instalación completa**            | Máximo rendimiento, acceso total al hardware, estabilidad. | No puedes usar otro sistema sin reinstalar o usar una VM. |
| **Arranque dual**                   | Permite elegir entre Ubuntu y otro SO, buen rendimiento. | Requiere reiniciar para cambiar de sistema, posible riesgo en la gestión del arranque. |
| **Máquina virtual**                 | No afecta el sistema principal, útil para pruebas. | Menor rendimiento, especialmente en gráficos. |
| **WSL (Windows Subsystem for Linux)** | Integración con Windows, sin necesidad de reiniciar. | No tiene acceso completo al hardware, no es ideal para interfaces gráficas pesadas. |
| **Aplicaciones dockerizadas**       | Permite ejecutar aplicaciones aisladas sin modificar el sistema. | Se necesita aprender Docker, y algunas aplicaciones pueden requerir configuración avanzada. |


## 💾🖥️ Instalación de linux

A continuación se mostrara como realizar cada una de las instalaciones para cada metodo de uso:

- [💿🏠 Intalación nativa (Recomendada, casi mandatoria)](./../Archivos/Ubuntu/Instalacion_nativa.md)

- [🖥️📦 Máquina virtual](./../Archivos/Ubuntu/Maquina_virtual.md)

- [🪟🔧🐧WSL (Windows Subsystem for Linux)](./../Archivos/Ubuntu/WSL.md)

- 🚢🐳 Aplicaciones dockerizadas: Su configuración es compleja y requiere el uso del WSL por lo cual esta opción no se vera empleada.