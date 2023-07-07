#!/bin/bash

set -x

source service.sh

context=$1
namespace=$2
service=$3
line=1000

result=`fullname $service`

pod=`kubectl --context $context -n $namespace get pods | grep $result | head -1 | awk '{print $1}'`
kubectl --context $context -n $namespace logs --tail $line $pod -f
