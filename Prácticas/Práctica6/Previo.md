# Creación de los archivos de 2GB
~~~
dd if=/dev/zero of=/home/donas11/raid/r0 bs=1M count=2048
dd if=/dev/zero of=/home/donas11/raid/r1 bs=1M count=2048
~~~

Asociamos los archivos a montajes
~~~
sudo losetup /dev/loop0 /home/donas11/raid/r0
sudo losetup /dev/loop1 /home/donas11/raid/r1
~~~


~~~
 losetup -a
~~~

Por la misma filosofía de docker, todos los recursos no están accesibles por defecto al contenedor, como a continuación, probamos el contenedor sin privilegios:
~~~
sudo docker run --name=Mraid3 -d -p 22443:443 -p 22080:80 -p 23306:3306 --device /dev/loop0:/dev/sdb —device /dev/loop1:/dev/sdc -it copia/servidor1 bash
~~~
Al no permitir algunas opciones utilizamos, le aplicamos privilegios de acceso extra a todos los dispositivos a bajo nivel del host:
~~~
 sudo docker run --privileged --name=Mraid3 -d -p 22443:443 -p 22080:80 -p 23306:3306 --device /dev/loop0:/dev/sdb --device /dev/loop1:/dev/sdc -it copia/servidor1 bash
~~~


# NFS pruebas

En el cliente a la hora de mostrar que montajes tiene el servidor disponible da el error:
~~~
showmount -e 172.17.0.2
clnt_create: RPC: Unknown host
~~~
se prueban las siguentes cosas sin resultado


eliminar en la linea netgroup: la palabra "nis" del archivo /etc/nsswitch.conf y parar el servicio
~~~
jed /etc/nsswitch.conf
~~~

~~~
# /etc/nsswitch.conf
#
# Example configuration of GNU Name Service Switch functionality.
# If you have the `glibc-doc-reference' and `info' packages installed, try:
# `info libc "Name Service Switch"' for information about this file.

passwd:         compat
group:          compat
shadow:         compat
gshadow:        files

hosts:          files dns
networks:       files

protocols:      db files
services:       db files
ethers:         db files
rpc:            db files

netgroup:

~~~

~~~
update-rc.d -f ypbind remove
~~~
tambien se le puede añadir un nombre al servidor
~~~
jed /etc/hosts
~~~

añadir la siguiente línea
~~~
172.17.0.2 ServidorNFS
~~~

y probar 

~~~
showmount -e ServidorNFS
~~~