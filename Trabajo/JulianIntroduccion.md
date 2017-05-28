# Introducción

Nuestro trabajo consiste en recrear las prácticas de la asignatura en un servidor casero, con el objetivo de observar a ras de circuito la importancia y el funcionamiento de las herramientas que hemos utilizado en el curso.

Para ello, hemos puesto a punto cuatro máquinas, las cuales tendrán como fin aunar potencia de cómputo y memoria para procesar las peticiones que lleguen al mismo. Una de estas máquinas será el balanceador de carga, el cual se encargará de repartir el grueso de las peticiones entre las máquinas preparadas para tal efecto. Todas ellas vendrán provistas de unos cuantos servidores web (apache) y una base de datos (MariaDB), utilizando como motor de virtualización los contenedores de Docker, intentando sacarle el máximo jugo a esta útil herramienta. Posteriormente entraremos en más detalles sobre la puesta a punto de los servidores y la configuración que hemos tenido que realizar sobre los mismos.

Para ello vamos a utilizar Docker.

# ¿Qué es Docker?

Docker es una plataforma de software que le permite crear, probar e implementar aplicaciones rápidamente. Docker empaqueta software en unidades estandarizadas llamadas
contenedores que incluyen todo lo necesario para que el software se ejecute, incluidas bibliotecas, herramientas de sistema, código y tiempo de ejecución. Con Docker, puede implementar y ajustar la escala de aplicaciones rápidamente en cualquier entorno con la certeza de saber que su código se ejecutará.


# Ventajas de Docker

Mejore la productividad de desarrollo Docker reduce el tiempo empleado en configurar nuevos entornos o en solucionar los problemas asociados con el uso de entornos diferentes. Estandarice las operaciones de aplicaciones Las aplicaciones con contenedores facilitan la implementación, la identificación de problemas y el retorno a una fase anterior para remediarlos.


# Empresas que lo Utilizan

Organizaciones contribuidoras apuestan por Docker:
* Red Hat
* IBM 
* Google por ejemplo con Google Container Engine y Kubernetes 
* NETFLIX utiliza a nivel muy bajo contenedores dockers en sus servidores de Amazon EC2 Container Service ya que este proporciona soporte técnico para Docker
* HPE - Composable Infrastructure Partner Program
* ADP
* Paypal
* 



___
***
- - -
1. [IBM-Docker](https://www.docker.com/ibm)
2. [Qué es Docker - Red hat](https://www.redhat.com/es/containers/what-is-docker)
3. [Google-Docker](https://cloud.google.com/container-engine/)
4. [Amazon Web services -Docker](https://aws.amazon.com/es/docker/)
5. [Empresas que utilizan Docker](https://www.docker.com/customers)
6. [AWS -Netflix](https://aws.amazon.com/es/solutions/case-studies/netflix/)
7. [Securing Containers the Netflix Way](https://speakerdeck.com/bdpayne/securing-containers-the-netflix-way)
8. [Netflix and containers not a stranger thing](https://es.slideshare.net/aspyker/netflix-and-containers-not-a-stranger-thing)
9. [Deploying Docker Containers with Netflix Spinnaker on Kubernetes and Titus](https://www.youtube.com/watch?v=ySdqDGfEOHo)
10. [AWS-Docker] (https://aws.amazon.com/es/getting-started/tutorials/deploy-docker-containers/)
11. [AWS-Docker-EC2 Container Service](https://aws.amazon.com/es/ecs/)
12. [Spinnaker](http://www.spinnaker.io/docs/frequently-asked-questions)
13. [HPE-Docker](http://h22168.www2.hpe.com/us/en/partners/docker/)




