
##Creamos un nuevo contenedor

~~~
sudo docker run -d -p 80:80 -p 443:443 -p 10022:22 -i -t --name BalanceadorTrabajo nginx bash
~~~

##accedemos a el

~~~
sudo docker attach BalanceadorTrabajo
~~~

##modificamos archivo /etc/nginx/conf.d/default.conf

~~~
upstream apaches {
    	ip_hash;
    	server alvarospunk.ddns.net:1217;
    	server juliansito.ddns.net:1113;
    	server juliansito.ddns.net:1117;
    	server juliansito.ddns.net:1121;
    	server donas11.hopto.org:1113;
    	server donas11.hopto.org:1117;
    	server donas11.hopto.org:1121;
    	server juliansito.ddns.net:1125;
	}
server{
    	listen 80;
     	listen 443 ssl;
     	ssl on;
     	ssl_certificate    	/tmp/apache.crt;
     	ssl_certificate_key	/tmp/apache.key;
    	server_name balanceador;
    	access_log /var/log/nginx/balanceador.access.log;
    	error_log /var/log/nginx/balanceador.error.log;
    	root /var/www/;
    	location /
    	{
            	proxy_pass https://apaches;
            	proxy_set_header Host $host;
            	proxy_set_header X-Real-IP $remote_addr;
            	proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
            	proxy_http_version 1.1;
            	proxy_set_header Connection "";
    	}
}
~~~

## reiniciamos servicio

~~~
service nginx restart
~~~






