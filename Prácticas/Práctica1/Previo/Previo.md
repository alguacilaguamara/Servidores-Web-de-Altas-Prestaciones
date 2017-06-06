# Pruebas previas con Docker
## Iniciamos un contenedor con una imagen de ubuntu básica y asignado al puerto 80 al puerto 1111<sup>1</sup> del host (Instalación por pasos) 
~~~
sudo docker run -d -p 1111:80 -i -t --name server1 ubuntu bash
~~~

![img](./imágenes/1.png)

![img](./imágenes/2.png)

  * Actualizamos los repositorios
~~~
apt-get update
~~~
  * Instalamos LAMP (introducimos password para MySQL "root")
~~~
apt-get install apache2 mysql-server php libapache2-mod-php php-mysql
~~~
  * Instalamos herramientas de red (ifconfig)
~~~
apt-get install net-tools
~~~

  * Cambiamos al directorio que apache ha creado
~~~
cd var/www/html/
~~~

  * Creamos un archivo nuevo
~~~
echo "<HTML><BODY>Esto funciona :). ESTO ES SWAP </BODY></HTML>">hola.html
~~~

  * Reiniciamos servicio de Apache
~~~
service apache2 restart
~~~

  * Interfaces de redes en el contenedor

![img](./imágenes/3.png)

  * En la máquina host(anfitriona) en un navegador web
~~~
http://localhost:1111/hola.html
http://172.17.0.1:1111/hola.html
~~~

  *  y comprobamos que funciona el servidor y hay conexión

![img](./imágenes/4.png)

##  Iniciamos un contenedor con una imagen de ubuntu con servidor ya instalado y asignando los puertos 80 y 22 al puerto 10306 y al 10022<sup>2</sup> del host 
 
 * El contenedor contiene ya LAMP instalado  
![img](./imágenes/5.png)
 
 * y comprobamos que funciona el servidor y hay conexión
![img](./imágenes/6.png)


***
<sup>1</sup>: Se ha utilizado el puerto 1111, se puede cambiar a otro distinto disponible en la máquina host.

<sup>2</sup>: Se han utilizado los puertos 10306 y 10022, se pueden cambiar a otros disponibles en la máquina anfitriona.





