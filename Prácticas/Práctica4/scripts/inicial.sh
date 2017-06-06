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
# (4) permitir la salida del equipo (output) con conexiones nuevas que
# solicitemos, conexiones establecidas y relacionadas. Permitir la
# entrada (input) solo de conexiones establecidas y relacionadas:
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A OUTPUT -m state --state NEW,ESTABLISHED,RELATED -j ACCEPT

