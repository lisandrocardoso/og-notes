#!/bin/bash

kubectl create configmap notejam-settings --from-file=notejam/settings.py
kubectl create configmap db-master-cnf --from-file=mariadb/my_custom_master.cnf
kubectl create configmap db-slave-01-cnf --from-file=mariadb/my_custom_slave_01.cnf
kubectl create secret generic maxscale-config --from-file=maxscale/maxscale.cnf
#kubectl create configmap maxscale-config --from-file=maxscale/maxscale.cnf
