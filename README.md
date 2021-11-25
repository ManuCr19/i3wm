# i3wm
Configuracion de i3wm + gaps + rofi + i3blocks + lightdm

| Paquete              | Descripcion                                |
| -------------------- | -------------------------------------------|
| **i3-wm**            | Contiene el gestor de ventanas i3          |
| **i3-gaps**          | Permite añadir gaps a i3wm                 |
| **i3blocks**         | Es la barra que utilizaremos               |
| **rofi**             | Menu para lanzar las aplicaciones          |
| **feh**              | Permite cambiar el fondo de pantalla       |
| **numlockx**         | Activar el teclado numerico                |
| **pulseaudio**       | Sera el servidor de audio que utilizaremos |
| **pavucontrol**      | Controlador de audio para pulseaudio       |
| **ttf-font-awesome** | Fuente para que funciones los iconos       |
| **acpi**             | Necesario para el indicador de bateria     |

# Lightdm
Sera el gestor de inicio de sesion que usaremos por defecto.

~~~
sudo pacman -S lightdm slick-greeter
~~~

| Paquete           | Descripcion                                 |
|-------------------|---------------------------------------------|
| **lightdm**       | Contiene el gestor de inicio de sesion      |
| **slick-greeter** | Cambia la apariencia por defecto de lightdm |
