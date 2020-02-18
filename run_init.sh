ANSIBLE_CONFIG=./ansible.cfg ansible-playbook -i hosts.yml playbook.yml --tags=init && \
ANSIBLE_CONFIG=./ansible.cfg ansible-playbook -i hosts.yml playbook.yml --skip-tags=excludeChroot