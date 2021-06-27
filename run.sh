#!/bin/bash
#### please run it with cautious !!! (first step delete namespace named: fmtest)
echo "clean setup"
kubectl delete namespace fmtest
echo "cretae namespace fmtest"
kubectl create namespace fmtest
echo "apply setup"
kubectl -n fmtest apply -f output/stdout-app.yaml
kubectl -n fmtest apply -f output/stderr-app.yaml
kubectl -n fmtest apply -f mongodb/fmt_mongodb.yaml
kubectl -n fmtest apply -f fluentd/fmt_fluentd_configmap.yaml
kubectl -n fmtest apply -f fluentd/fmt_fluentd.yaml
echo "waiting for all pods in namespace fmtest to be ready:"
kubectl -n fmtest get pod
kubectl -n fmtest wait pod --for=condition=Ready -l app='fmt-lbl'
echo "get mongo pod name:"
MONGOPOD=$(kubectl -n fmtest get pod -l name='fmt-mongodb' -o jsonpath="{.items[0].metadata.name}")
echo "open shell for mongo pod:"  $MONGOPOD 
kubectl -n fmtest exec -it $MONGOPOD sh
