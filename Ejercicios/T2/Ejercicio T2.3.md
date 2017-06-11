## ¿Cómo analizar el nivel de carga de cada uno de los subsistemas en el servidor? 

Para una vista rápida del rendimiento de una página web, y por tanto, muy seguramente el rendimiento del servidor que
hay detrás de esa web, google desarroló un completento llamado PageSpeed insights[1], que proporciona de forma rápida
una medida para saber el estado del servidor.

Si estamos directamente en contacto con el servidor, podemos aprovechar usar software para hacer un bechmark,como SPEC CPU[2], 
que nos proporcionan software para testear casi cualquier parte del servidor, a destacar la carga de la CPU, la Virtualization
que tengamos, y otras.

Si lo que necesitamos es medir la carga real del servidor podemos usar las herramientas de los S.O. Si disponemos de UNIX o 
Linux, podemos vichear en el directorio[3] /proc desde la cuál podemos acceder a información general sobre el S.O.(loadavg, uptime,
cpuinfo, etc), acceder a la información de los procesos del sistema(/proc/[pid]), acceder y, a de vez en cuando, modificar 
algunos parámetros del kernel, usar directamente algun programa que nos muestre mucha información como la relatada anteriormente
con ps, top, htop, vmstat.

Si nos encontramos con un servidor con Windows podemos usar el Monitor de sistema o generar un informe de la carga que más nos
interese del sistema en Panel de control->Herramientas administrativas->Análisis de rendimiento.

[1] http://www.diginota.com/analizar-y-mejorar-la-velocidad-de-un-blog-con-wordpress/?share=facebook

[2] http://www.spec.org/cpu/

[3] Apuntes de la asignatura Ingeniería de Servidores(ISE)

[4] https://support.microsoft.com/es-us/help/815159/how-to-analyze-asp.net-web-application-performance-by-using-the-performance-administration-tool
