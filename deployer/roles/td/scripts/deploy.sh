#!/bin/bash

set -e
set -u

PROJECT=$1
TD_KEY=$2
TD_ENDPOINT=$3

echo "deploying:$PROJECT"
cd /tmp/$PROJECT
td -k "$TD_KEY" -e "$TD_ENDPOINT" wf push $PROJECT


