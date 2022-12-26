#!/bin/bash

if [ "$#" -gt 0 ]; then
  NOTEBOOKS_FROM=$1
  if [ "$#" -gt 1 ]; then
    HUB_PATH=$2
  else
    HUB_PATH='/srv/jupyterhub'
  fi
  cp -rv $NOTEBOOKS_FROM/* $HUB_PATH
fi

jupyterhub