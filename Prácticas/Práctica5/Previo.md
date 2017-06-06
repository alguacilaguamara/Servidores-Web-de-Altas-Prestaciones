# Previo Práctica 5
Después de realizar pruebas de configuración  ver siempre errores en Last_IO_Error y el valor NULL en Seconds_Behind_Master
~~~
Seconds_Behind_Master: NULL
Last_IO_Error:
~~~
y hasta no permitir iniciar mysql con:

~~~
mysql -u root -p 
~~~

se decide utilizar las copias de seguridad e iniciarlas de nuevo creando nuevos contenedores de docker llamados servidor1 y servidor2
