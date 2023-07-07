#!/bin/bash

set -x

context=$1
namespace="mysql"
pod="mysql-0"

password=`kubectl --context $context -n $namespace exec $pod -- sh -c 'echo $MYSQL_ROOT_PASSWORD'`
kubectl --context $context -n $namespace exec -ti $pod -- mysql -uroot -p${password}
