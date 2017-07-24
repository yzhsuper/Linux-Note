#!/bin/bash

es_type='product-trade'
es_index='csgointl'
es_host='localhost'
es_alias='csgointl_alias'

while getopts h:t:i:n:p: option
do
    case "$option" in
        h)
            es_host=$OPTARG;;
        t)
            es_type=$OPTARG;;
        i)
            es_index=$OPTARG;;
        a)
            es_alias=$OPTARG;;
        p)
            es_port=$OPTARG;;
        \?)
            echo "Usage: args [-h n] [-t n] [-i n] [-a n] [-p n]"
            echo "-h means host"
            echo "-i means index"
            echo "-t means type"
            echo "-a means index alias"
            echo "-p means host port"
            exit 1;;
    esac
done

echo "host: $es_host"
echo "index: $es_index"
echo "type: $es_type"
echo "index alias: $es_alias"

read -p "Use above config add elastic index(Y/N):"

if [ -z "$REPLY" ]
then
    read -p "Use above config add elastic index(Y/N):"
fi

if [ -z "$REPLY" ]
then
    exit 0
fi

if [ "$REPLY" == "Y" -o "$REPLY" == "y" ] 
then
    echo "yes"
else
    exit 0
fi