#!/bin/bash

DIRTY=$(git status -s)

if [[ ${DIRTY} == "" ]]; then
  exit 0
fi

echo "we commit here"
