# Observaciones previas 
Si ejecutamos el comando

~~~
netstat -tulpn
~~~

podemos observar que el servidor no escucha en el puerto 443
al ejecutar

~~~
a2enmod ssl
~~~

y 

~~~
service apache2 restart
~~~
podemos comprobar otra vez con 

~~~
netstat -tulpn
~~~

que el servidor ya si escucha en el puerto 443

			