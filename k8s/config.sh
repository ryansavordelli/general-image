#!/bin/bash

export TESTE_SHELL='Variavel teste'


testeFunction(){
    if [ "${ENV_TEST}" = "DEV" ];then
        echo 'Ambiente é  '$ENV_TEST''
    else
        echo 'Outro ambiente'
    fi
}

configDeploy(){
    if [ "${ENV_DEPLOY}" = "dev" ];then
        sed -i 's/HOST_POD/dev/g' k8s/deploy.yaml
    else
        sed -i 's/HOST_POD/prd/g' k8s/deploy.yaml
    fi
}