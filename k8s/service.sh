#!/bin/bash

fullname(){
    result=""
    case $1 in
      hive) result=hivemetastore;;
      gms) result=datahub-gms;;
      *) result=$1;;
    esac
    echo $result
}
