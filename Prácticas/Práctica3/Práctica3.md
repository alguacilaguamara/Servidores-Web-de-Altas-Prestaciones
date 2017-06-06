
# Configurar una máquina e instalarle el nginx como balanceador de carga
## Configuramos los dos archivos de configuración

![img](./imágenes/3.png)
## Archivo /etc/nginx/conf.d/default.conf
![img](./imágenes/2.png)
## Archivo /etc/nginx/nginx.conf
![img](./imágenes/1.png)

## Reiniciamos servicio
~~~
service nginx restart
~~~
![img](./imágenes/6.jpg)

## Comprobamos que el balanceador funciona bien
![img](./imágenes/4.png)

![img](./imágenes/5.png)

# Configurar una máquina e instalarle el haproxy como balanceador de carga

## Configuramos archivo de configuración
![img](./imágenes/11.jpg)


## Reiniciamos servicio
~~~
/usr/sbin/haproxy -f /etc/haproxy/haproxy.cfg
~~~
![img](./imágenes/6.jpg)
	
## Comprobamos que el balanceador funciona bien
![img](./imágenes/7.jpg)

![img](./imágenes/8.jpg)


# Someter a la granja web a una alta carga, teniendo primero nginx y después haproxy. 

## nginx

![img](./imágenes/9_1.jpg)

![img](./imágenes/9_2.jpg)


## Haproxy


![img](./imágenes/10.jpg)


![img](./imágenes/10_1.jpg)

## Comparación

<table summary="Pruebas Apache Benchmark con Nginx y Haproxy">
	 	<thead>
		<tr>
<th scope="col"></th>
<th scope="col">Nginx</th>
<th scope="col">Haproxy</th>
		   </tr>
	       </thead>
<tbody>
		 <tr> 
<th>Time taken for tests:</th>
<td>0.159 seconds</td>
<td> 0.149 seconds </td>
		</tr>
		  
</tbody>
</table>


	
# Extra - lighttpd


## Configuramos archivo de configuración

![img](./imágenes/12.jpg)

## Reiniciamos servicio
~~~
service lighttpd restart
~~~
![img](./imágenes/13.jpg)

## Comprobamos que el balanceador funciona bien
![img](./imágenes/14.jpg)

![img](./imágenes/15.jpg)

## Someter a la granja web a una alta carga

![img](./imágenes/16.jpg)

![img](./imágenes/17.jpg)


## Comparación

<table summary="Pruebas Apache Benchmark con Nginx y Haproxy">
<thead>
		<tr>	
<th scope="col"></th>
<th scope="col">Nginx</th>
<th scope="col">Haproxy</th>
<th scope="col">lighttpd</th>
	   </tr>
</thead>
<tbody>
		 <tr> 
<th>Time taken for tests:</th>
<td>0.159 seconds</td>
<td> 0.149 seconds </td>
<td> 0.171 seconds </td>
		</tr>
</tbody>
</table>
