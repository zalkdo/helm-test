# PostgreSql
helm chart : https://github.com/bitnami/charts/tree/master/bitnami/postgresql
helm 설치와 Deplyment설치에 대한 가이드

## Deployment - Install
https://severalnines.com/database-blog/using-kubernetes-deploy-postgresql
### ConfigMap Create
```
$ kubectl create -f postgre-configmap.yaml
```
### Persistent Storage Volume Create
```
$ kubectl create -f postgre-storage.yaml
```
### Deployment/Service Create
```
$ kubectl create -f postgre-deployment.yaml
```
### Delete Deployment
```
$ kubectl delete service postgres
$ kubectl delete deployment postgres
$ kubectl delete configmap postgres-config
$ kubectl delete persistentvolumeclaim postgres-pv-claim
$ kubectl delete persistentvolume postgres-pv-volume
```

##Helm Chart - Install
```

```