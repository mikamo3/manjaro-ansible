#!/usr/bin/env bash
TAGS="init"
if [[ "$1" != "" ]]; then
  TAGS="$1"
fi
ANSIBLE_CONFIG=./ansible.cfg ansible-playbook -i hosts.yml playbook.yml -v --tags=$TAGS --ask-become-pass
