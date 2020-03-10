#!/usr/bin/env bash
HOSTS_FILE=$1
shift
if [[ "$1" != "" ]]; then
  TAGS="--tags=$1"
  shift
fi
ANSIBLE_CONFIG=./ansible.cfg ansible-playbook -i $HOSTS_FILE playbook.yml $TAGS --ask-become-pass $@
