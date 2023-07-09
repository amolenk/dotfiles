#!/usr/bin/env bash

# check if environment parameter is passed
if [ $# -eq 0 ]
then
    echo "Environment parameter is missing."
    exit 1;
fi

# check if environment is valid
if [ "$1" != "home" ] && [ "$1" != "work" ]
then
    echo "Invalid environment parameter, must be 'home' or 'work'
    exit 1
fi

source MacAppStore.essentials.sh

if [ "$1" != "home" ]
then
    source MacAppStore.home.sh
fi