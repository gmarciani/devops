#!/bin/sh

DO_KUBERNETES_HOME="$(realpath $( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd ))"

KUBERNETES_HOME="${DO_KUBERNETES_HOME}/kubernetes"

PLAYBOOK_PROVISION="${KUBERNETES_HOME}/cluster.yml"

CWD=$(pwd)

cd ${KUBERNETES_HOME}

ansible-playbook ${PLAYBOOK_PROVISION}

cd ${CWD}

export KUBECONFIG="~/.kube/config:${KUBERNETES_HOME}/artifacts/admin.conf"

unset DO_KUBERNETES_HOME
unset KUBERNETES_HOME
unset PLAYBOOK_PROVISION
unset CDW
