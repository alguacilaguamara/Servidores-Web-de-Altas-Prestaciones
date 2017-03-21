# Práctica 2
## Probamos a copiar un archivo por ssh desde la máquina principal

![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/1.png)

## Vamos a copiar la carpeta /var/ entre las dos máquinas

  * enviamos a la máquina 2 comprimida la carpeta
  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/2.png)

  * descomprimimos la carpeta y ya tenemos un clon de la carpeta de la máquina 1
  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/3.png)

  * o también podría hacerse con la herramienta rsync y tendríamos también una clonación de la carpeta /var/www/
  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/4.png)

## Para configurar el ssh para acceder sin que solicite contraseña entre estas dos máquinas 
* generamos las claves privadas y públicas.

  * con dss:

  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/5dss.png)

  * o con rsa:

  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/5rsa.png)

* Copiamos la clave pública
  
  * si es dss:
  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/6dss.png)

  * si es rsa:
  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/6rsa.png)

* y comprobamos que podemos acceder mediante ssh sin necesidad de introducir contraseña
![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/7.png)

## Para establecer una tarea en cron que se ejecute cada hora para mantener actualizado el contenido del directorio /var/www entre las dos máquinas
  * ejecutamos 
~~~
crontab -e
~~~
  * y añadimos con el editor de textos una nueva linea de la siguiente forma:
  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/8.png)

  * reiniciamos el servicio cron
	
  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/9.png)

  * comprobamos que un archivo de prueba en el servidor uno
	  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/10.png)

  * a la hora se copia en el servidor dos

  ![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica2/11.png)


