#!/bin/bash
# -*- ENCODING: UTF-8 -*-
# (1) se eliminan todas las reglas que hubiera
# para hacer la configuración limpia:
iptables -F
iptables -X
# (2) establecer las políticas por defecto (denegar todo el tráfico):
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
# (3) permitir cualquier acceso desde localhost (interface lo):
iptables -A INPUT -i lo -j ACCEPT
iptables -A OUTPUT -o lo -j ACCEPT
# (4) Abrir el puerto 22 para permitir el acceso por SSH:
iptables -A INPUT -i eth0 -p tcp --dport 22 -j ACCEPT
iptables -A OUTPUT -o eth0 -p udp --sport 22 -j ACCEPT
# (5) Abrir los puertos HTTP/HTTPS (80 y 443) de servidor web:
iptables -A INPUT -i eth0 -m state --state NEW -p tcp --dport 80 -j ACCEPT
iptables -A OUTPUT -o eth0 -m state --state NEW -p udp --sport 80 -j ACCEPT
iptables -A INPUT -i eth0 -m state --state NEW -p tcp --dport 443 -j ACCEPT
iptables -A OUTPUT -o eth0 -m state --state NEW -p udp --sport 443 -j ACCEPT

