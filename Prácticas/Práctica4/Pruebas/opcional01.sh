#!/bin/sh
# -*- ENCODING: UTF-8 -*-

#habilitamos en el kernel el redireccionamiento
echo 1 > /proc/sys/net/ipv4/ip_forward

# (1) Eliminar todas las reglas (configuración limpia)
iptables -F
iptables -t nat -F
iptables -X
iptables -t nat -X

# (2) Política por defecto: denegar todo el tráfico
iptables -P INPUT DROP
iptables -P OUTPUT DROP


# (3) Permitir cualquier acceso desde localhost (interface lo)
iptables -A INPUT -i eth0 -j ACCEPT
iptables -A OUTPUT -o eth0 -j ACCEPT

# (4) Abrir el puerto 22 para permitir el acceso por SSH
iptables -A INPUT -p tcp —dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp —sport 22 -j ACCEPT

# (5) Abrir los puertos HTTP (80) de servidor web
iptables -A INPUT -p tcp —dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp —sport 80 -j ACCEPT
# (6) Abrir los puertos HTTPS (443) de servidor web
iptables -A INPUT -p tcp —dport 443 -j ACCEPT
iptables -A OUTPUT -p tcp —sport 443 -j ACCEPT

# (7) reencaminamos el tráfico
iptables -A FORWARD -o eth0 -p tcp —dport 80 -d 172.17.0.2 -j ACCEPT
iptables -A FORWARD -i eth0 -p tcp —sport 80 -d 172.17.0.5 -j ACCEPT

iptables -A FORWARD -o eth0 -p tcp —dport 443 -d 172.17.0.2 -j ACCEPT 
iptables -A FORWARD -i eth0 -p tcp —sport 443 -d 172.17.0.5 -j ACCEPT  

#redireccionamiento HTTPS
iptables -t nat -A PREROUTING -i eth0 -p tcp —dport 443 -j DNAT —to-destination 172.17.0.2:443
iptables -t nat -A POSTROUTING -o eth0 -p tcp -d 172.17.0.2 —dport 443 -j SNAT —to-source 172.17.0.5
