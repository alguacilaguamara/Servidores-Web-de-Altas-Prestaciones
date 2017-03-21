Instalamos SSH en los dos servidores
~~~
apt-get install openssh-server openssh-client
~~~

Como estamos trabajando como root utilizamos cambiamos la contraseña 
~~~
passwd
~~~
En el servidor 1

![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/Previo/1.png)

En el servidor 2

![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/Previo/2.png)



y en el archivo etc/ssh/sshd_config la opción PermitRootLogin 
 permitimos el uso de root por ssh que cambiando el parámetro por defecto de "prohibited-password" 
 
![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/Previo/3.png)

a "yes"

![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/Previo/4.png)

sin embargo en el contenedor que viene instalado por defecto LAMP esta configurado a "yes" por lo tanto no hay que modificarlo 
![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/Previo/5.jpg)
