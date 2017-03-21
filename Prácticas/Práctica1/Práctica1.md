# Práctica 1
## Resultados de ejecutar los comandos
apache2 -v
~~~
Server version: Apache/2.4.18 (Ubuntu)
Server built:   2016-07-14T12:32:26
~~~
ps aux | grep apache
~~~
root        36  0.0  0.5 258256 22884 ?        Ss   13:38   0:00 /usr/sbin/apache2 -k start
www-data    41  0.0  0.1 258488  7072 ?        S    13:38   0:00 /usr/sbin/apache2 -k start
www-data    42  0.0  0.1 258280  5740 ?        S    13:38   0:00 /usr/sbin/apache2 -k start
www-data    43  0.0  0.1 258320  5740 ?        S    13:38   0:00 /usr/sbin/apache2 -k start
www-data    44  0.0  0.1 258296  5740 ?        S    13:38   0:00 /usr/sbin/apache2 -k start
www-data    45  0.0  0.1 258296  5740 ?        S    13:38   0:00 /usr/sbin/apache2 -k start
www-data    49  0.0  0.1 258280  5740 ?        S    13:38   0:00 /usr/sbin/apache2 -k start
www-data    50  0.0  0.1 258280  5740 ?        S    13:38   0:00 /usr/sbin/apache2 -k start
root        53  0.0  0.0  11284   880 ?        S+   13:39   0:00 grep --color=auto apache
~~~

## Captura de patalla
![img](https://github.com/donas11/swap1617/blob/master/Prácticas/Práctica1/apachefuncionando.png)
