#!/bin/bash

function set_env(){
    echo -e "AIRFLOW_UID=$(id -u)\nAIRFLOW_GID=0" > .env
}

function run_airflow_init(){
    docker-compose up airflow-init
}

function main(){
    set_env()
    run_airflow_init()
}

main()