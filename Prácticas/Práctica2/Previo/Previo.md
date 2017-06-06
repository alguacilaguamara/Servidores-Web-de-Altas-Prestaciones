Instalamos SSH en los dos servidores
~~~
apt-get install openssh-server openssh-client
~~~

Como estamos trabajando como root utilizamos cambiamos la contraseña 
~~~
passwd
~~~
En el servidor 1

![img](./imágenes/1.png)

En el servidor 2

![img](./imágenes/2.png)



y en el archivo etc/ssh/sshd_config la opción PermitRootLogin 
 permitimos el uso de root por ssh que cambiando el parámetro por defecto de "prohibited-password" 
 
![img](./imágenes/3.png)

a "yes"

![img](./imágenes/4.png)

sin embargo en el contenedor que viene instalado por defecto LAMP esta configurado a "yes" por lo tanto no hay que modificarlo 
![img](./imágenes/5.jpg)
