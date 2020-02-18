#!/usr/bin/env bash
if [[ "$1" != "" ]]; then
  TAGS="--tags=$1"
fi
ANSIBLE_CONFIG=./ansible.cfg ansible-playbook -i hosts.yml playbook.yml -v $TAGS --ask-become-pass
