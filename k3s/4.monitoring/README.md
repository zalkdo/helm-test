# prometheus
https://artifacthub.io/packages/helm/prometheus-community/prometheus

## ��ġ
https://github.com/prometheus-community/helm-charts
```
# get repo info
$ helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
$ helm repo add stable https://kubernetes-charts.storage.googleapis.com/
$ helm repo update
# install chart
$ kubectl create ns monitoring
$ helm install prometheus prometheus/prometheus --namespace monitoring
```


## ������Ʈ
https://github.com/prometheus-community/helm-charts
```
```

## ����
```
helm uninstall prometheus
```