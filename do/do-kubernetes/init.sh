#!/bin/sh

DO_KUBERNETES_HOME="$(realpath $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ))"

DO_HOME="${DO_KUBERNETES_HOME}/digitalocean"

PLAYBOOK_DO_INIT="${DO_HOME}/droplet-init.yml"

CWD=$(pwd)

cd ${DO_HOME}

ansible-playbook ${PLAYBOOK_DO_INIT}

cd ${CWD}

unset DO_KUBERNETES_HOME
unset DO_HOME
unset PLAYBOOK_DO_INIT
unset CDW
