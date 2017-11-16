#!/bin/sh

DO_KUBERNETES_HOME="$(realpath $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ))"

KUBERNETES_HOME="${DO_KUBERNETES_HOME}/kubernetes"

PLAYBOOK_PROVISION="${KUBERNETES_HOME}/cluster.yml"

CWD=$(pwd)

cd ${DO_HOME}

ansible-playbook ${PLAYBOOK_PROVISION}

cd ${CWD}
