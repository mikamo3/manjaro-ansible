#!/usr/bin/env bash
TAGS="init"
if [[ "$1" != "" ]]; then
  TAGS="$1"
fi
ANSIBLE_CONFIG=./ansible.cfg ansible-playbook -i hosts_test.yml playbook.yml -v --tags=$TAGS