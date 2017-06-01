# Recreación de las prácticas de SWAP en equipos reales.
 
Nuestro trabajo consiste en recrear un servidor distribuido, accesible desde Internet, con el objetivo de observar la importancia y el funcionamiento de las herramientas que hemos utilizado en el curso agregando la tecnología Docker.
 
Para ello, hemos puesto a punto cuatro máquinas, distribuidas por la ciudad, emulando lo que sería un GSLB con balanceo basado en DNS.
Una de estas máquinas será el balanceador de carga, el cual se encargará de repartir el grueso de las peticiones entre las máquinas preparadas para tal efecto. Cada máquina tendrá unos cuantos servidores web (Apache) y una base de datos (MariaDB) utilizando contenedores de Docker.
