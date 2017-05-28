# 
## Descripción
El objetivo de esta página web es gestionar la entrada y salida de usuarios registrados, guardar datos de aspectos tecnicos del servidor y del cliente, y ver porcentajes sobre los datos guardados

## Objetivos
* El sistema almacenara datos
* El sistema mostrara datos de una forma visual
* El sistema permitira acceder mediante usuario y contraseña
* El sistema permitira salir 

## Descripción de los implicados
### Entorno de usuario
Los	 usuarios directos de la aplicación a desarrollar es el usuario registrado que dispone de todas las opciones de la pagina web

### Resumen de los implicados

<table border="0" cellspacing="0" cellpadding="0" class="ta1"><colgroup><col width="134"/><col width="194"/><col width="99"/><col width="99"/></colgroup><tr class="ro1"><td style="text-align:left;width:30.76mm; " class="ce3"><p>Nombre</p></td><td style="text-align:left;width:44.38mm; " class="ce3"><p>Descripción </p></td><td style="text-align:left;width:22.58mm; " class="ce3"><p>Tipo</p></td><td style="text-align:left;width:22.58mm; " class="ce3"><p>Responsabilidad</p></td></tr><tr class="ro1"><td style="text-align:left;width:30.76mm; " class="Default"><p>Usuario registrado </p></td><td style="text-align:left;width:44.38mm; " class="Default"><p>Representa un usuario registrado</p></td><td style="text-align:left;width:22.58mm; " class="Default"><p>Usuario del sistema</p></td><td style="text-align:left;width:22.58mm; " class="Default"><p>Iniciar sesión, cerrar sesión, guardar datos y visualizar porcentajes</p></td></tr></table>

### Criterios de Exito
* Usuario registrado: Que el sistema le permita utilizar la navegación de forma sencilla y rápida. 


### Requisitos Funcionales
* **RF-1. Iniciar sesión** El sistema realizará una consulta 
	* RF-1.1. El sistema sera capaz de responder al entrar
* **RF-2. Guardar Datos** El sistema guardará los datos
	* RF-1.1. El sistema será capaz de almacenar los datos
* **RF-3. ver estadisticas** El sistema mostrará los datos
	* RF-1.1. El sistema sera capaz de mostrar porcentajes de datos guardados
* **RF-4. Cerrar sesión** El sistema eliminará los datos 
	* RF-1.1. El sistema borrara todos los datos utilizados en la sesión 

### Requisitos No Funcionales
* **RNF1** Es necesario de conocimientos iniciales de navegación por web
* **RNF2** No es necesario documentación al usuario
* **RNF3** Es necesario la utilización de un navegador de internet
* **RNF4** El sistema debe ser estable y escalable
* **RNF5** El sistema debe soportar un número indefinido de usuarios
simultáneamente
* **RNF6** El sistema debe de ser veloz y con los mínimos tiempos de
carga posibles.


### Requisitos de Información
* ** RI1 Iniciar Sesion**
	* Imformación de usuario 
	* **Contenido:** un usuario esta identificado por su usuario y la contraseña  
	* **Requisitos asociados:** RF-1, RF-2,RF-3,RF-4

* ** RI2 Datos**
	* Información del servidor y del cliente
	* **Contenido:** Información destinada para guardar direcciones IP, Sistemas operativos, Navegadores tamaños de pantalla y usuario
	* **Requisitos asociados:**RF2,RF3



## Diagramas

### Diagramas de caso de uso
![img](./imagenes/Casosdeuso.png)


### Descripción de los casos de usos

### Descripción de los actores

### Descripción Extendida de los Casos de Uso

### Glosario de términos extendido

###Modelo Conceptual

### Diagramas de Secuencia

### iniciar sesión

### Diagrama de clases del diseño
