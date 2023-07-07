#!/bin/bash

set -x

source service.sh

context=$1
namespace=$2
service=$3

result=`fullname $service`

dep=`kubectl --context $context -n $namespace get deploy | grep $result | head -1 | awk '{print $1}'`
kubectl --context $context -n $namespace edit deploy $dep
