#!/bin/sh

echo "Waiting Kubernetes to launch on 8080..."

while ! nc -z localhost 8080; do
  sleep 0.1 # wait for 1/10 of the second before check again
done

/usr/bin/virtual-kubelet --provider=mock