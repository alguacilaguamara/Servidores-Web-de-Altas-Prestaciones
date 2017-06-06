#!/bin/sh

#habilitamos en el kernel el redireccionamiento
echo 1 > /proc/sys/net/pv4/ip_forward

# (1) Eliminar todas las reglas (confguración limpia)
iptables -F
iptables -t nat -F
iptables -X
iptables -t nat -X

# (2) Política por defecto: denegar todo el tráfico
iptables -P INPUT DROP
iptables -P OUTPUT DROP

# (3) Permitir cualquier acceso desde (interface eth0)
iptables -A INPUT -i eth0 -j ACCEPT
iptables -A OUTPUT -o eth0 -j ACCEPT

# (4) Abrir el puerto 22 para permitir el acceso por ssh
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT

# (5) Abrir el puerto HTTP (80) de servidor web
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 80 -j ACCEPT

# (5) Abrir el puerto HTTPS (443) de servidor web seguro
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 443 -j ACCEPT


