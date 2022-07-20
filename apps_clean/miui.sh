#!/bin/bash

LOCALDIR=`cd "$( dirname $0 )" && pwd`
cd $LOCALDIR

systemdir=$1

apps_dir="
CameraTools
Mipay
Browser
MiuiCamera
mab
mi_connect_service
MiPlayClient
MSA
NQNfcNci
PaymentService
Updater
VsimCore
YouDaoEngine
GmsCore
GooglePlayServicesUpdater
"

for delete_dir in $apps_dir ;do
  find $systemdir -type d -name "$delete_dir" | xargs rm -rf
done
