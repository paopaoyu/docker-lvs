#!/bin/bash
/etc/init.d/keepalived start
sed -i "s/LVS_TYPE/${LVS_TYPE}/g" /app/keepalived.tmpl
sed -i "s/LVS_PRI/${LVS_PRI}/g" /app/keepalived.tmpl
sed -i "s/LVS_VIP/${LVS_VIP}/g" /app/keepalived.tmpl
/app/docker-gen -watch -notify "/etc/init.d/keepalived restart" /app/keepalived.tmpl /etc/keepalived/keepalived.conf
