#!/bin/bash
docker images | awk '(NR > 1) && ($2!~/none/) {print $1":"$2}' | xargs -L1 docker pull
docker images | awk '(NR > 1) && ($2~/none/) {print $3}' | xargs -L1 docker rmi
