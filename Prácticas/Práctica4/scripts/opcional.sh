#!/bin/sh

#habilitamos en el kernel el redireccionamiento
echo 1 > /proc/sys/net/ipv4/ip_forward

# (1) Eliminar todas las reglas (configuraci  n limpia)
iptables -F
iptables -t nat -F
iptables -X
iptables -t nat -X

# (2) Pol  tica por defecto: denegar todo el tr  fico
iptables -P INPUT DROP
iptables -P OUTPUT DROP


# (3) Permitir cualquier acceso desde localhost (interface lo)
iptables -A INPUT -i eth0 -j ACCEPT
iptables -A OUTPUT -o eth0 -j ACCEPT

# (4) Abrir el puerto 22 para permitir el acceso por SSH
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 22 -j ACCEPT

# (5) Abrir los puertos HTTP (80) de servidor web
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 80 -j ACCEPT
# (6) Abrir los puertos HTTPS (443) de servidor web
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A OUTPUT -p tcp --sport 443 -j ACCEPT

#redireccionamiento HTTPS
iptables -t nat -A PREROUTING -p tcp --dport 443 -j DNAT --to-destination 172.17.0.4:443
iptables -t nat -A POSTROUTING -p tcp -d 172.17.0.4 --dport 443 -j SNAT --to-source 172.17.0.5

#redireccionamiento HTTP	
iptables -t nat -A PREROUTING -p tcp --dport 80 -j DNAT --to-destination 172.17.0.4:443
iptables -t nat -A POSTROUTING -p tcp -d 172.17.0.4 --dport 80 -j SNAT --to-source 172.17.0.5
