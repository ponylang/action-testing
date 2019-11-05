#!/bin/bash

DIRTY=$(git status -s)

if [[ ${DIRTY} == "" ]]; then
  echo "not"
fi
