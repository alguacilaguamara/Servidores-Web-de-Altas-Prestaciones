# Copias de Seguridad
## [Servidor1](https://mega.nz/#!JkoxHZSR!Md_KVIZXh6GWTfK4GEC4TTEZLVbRnRjOguMnrKyG75w)
## [Servidor2](https://mega.nz/#!txZUhTTT!7vFKNUqkXZUQBcVY76rz5ELtf12u3GXiP9zbQ-d4TdM)
## [balanceador nginx SSL con iptables](https://mega.nz/#!V04X0JSL!VZ4JZCtzNCYjSQ_RYcf8MHyQvcuvS8o4QZZIHuQlU9s)
## [balanceador Haproxy SSL](https://mega.nz/#!41BnTYha!KHqOX4HEcK6TPTy0H_Xj8l2RW0Q5W_JxOUA8z1O1R-0)
## [balanceador Lighttpd](https://mega.nz/#!FloyyALB!3N3g6cRsGuUtduJ4N7GrPCGx9njBbiDBRmILJTDHMZo)

# Contraseñas de Servidores
* root
~~~
123456
~~~

* MySQL
~~~	
u4h7j9e3
~~~


## Modificar password MySQL 
Si hay problemas con la contraseña al acceder 
* Detener el servicio 
~~~
service mysql stop	
~~~
* Accedemos 
~~~
mysqld_safe --skip-grant-tables &
mysql -u root
~~~
* cambiamos a la base de datos mysql
~~~
use mysql;
~~~
* Modificamos la contraseña
~~~
update user set authentication_string=PASSWORD("NuevaContraseña") where user='root';
~~~
* Actualizamos los privilegios
~~~
flush privileges;
~~~
* Salimos de Mysql
~~~
quit;
~~~
* Paramos servicio y arrancamos
~~~
service mysql stop
service mysql start
~~~

