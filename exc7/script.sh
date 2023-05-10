#!/bin/bash

SERVER=$1

ping -c 1 $SERVER > /dev/null


if [ $? -eq 0 ]
then
  echo "Informações do servidor $SERVER:"
  ping $SERVER
else
  echo "Erro: servidor $SERVER não encontrado."
fi
