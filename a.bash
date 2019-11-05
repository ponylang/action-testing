#!/bin/bash

DIRTY=$(git status -s)
echo ${DIRTY}
