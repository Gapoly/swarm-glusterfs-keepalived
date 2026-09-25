#!/bin/bash
# Script lancement mount GlusterFS

sleep 2

while true
do
    mount -t glusterfs swarm01:/gv0 /mnt/docker -o backup-volfile-servers=swarm02:swarm03
    mount_return=$?
    case $mount_return in
        0) break;;
        *) sleep 5;;
    esac
done