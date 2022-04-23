#!/bin/bash

OCP_VERSION=latest-4.10

curl -k https://mirror.openshift.com/pub/openshift-v4/clients/ocp/latest/openshift-client-linux.tar.gz > oc.tar.gz
tar zxf oc.tar.gz
chmod +x oc && mv oc ~/.local/bin/

curl -k https://mirror.openshift.com/pub/openshift-v4/clients/ocp/$OCP_VERSION/openshift-install-linux.tar.gz > openshift-install-linux.tar.gz
tar zxvf openshift-install-linux.tar.gz
chmod +x openshift-install && mv openshift-install ~/.local/bin/

curl $(openshift-install coreos print-stream-json | grep location | grep x86_64 | grep iso | cut -d\" -f4) > rhcos-live.x86_64.iso

