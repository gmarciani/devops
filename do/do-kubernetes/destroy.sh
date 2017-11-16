#!/bin/sh

DO_KUBERNETES_HOME="$(realpath $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ))"

DO_HOME="${DO_KUBERNETES_HOME}/digitalocean"

PLAYBOOK_DO_DESTROY="${DO_HOME}/droplet-destroy.yml"

CWD=$(pwd)

cd ${DO_HOME}

ansible-playbook ${PLAYBOOK_DO_DESTROY}

cd ${CWD}
