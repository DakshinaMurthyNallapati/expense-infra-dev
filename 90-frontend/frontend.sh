#!/bin/bash

dnf install ansible -y
#this is for ansible push model
#ansible-playbook -i inventory mysql.yaml

#pull
ansible-pull -i localhost, -U https://github.com/DakshinaMurthyNallapati/expense-ansible-roles-tf.git main.yaml -e COMPONENT=frontend -e ENVIRONMENT=$1
