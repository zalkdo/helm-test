# Prometheus
https://artifacthub.io/packages/helm/prometheus-community/prometheus

## 설치
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
## 외부 접속
https://artifacthub.io/packages/helm/bitnami/prometheus-operator
> **Tip**: parameters만 참조 deprecated
```
$ helm install prometheus prometheus/prometheus \
  --set server.service.type=NodePort \
  --set alertmanager.service.type=NodePort \
  --namespace monitoring 
```

## 삭제
```
helm uninstall prometheus --namespace monitoring
```

# Grafana
https://artifacthub.io/packages/helm/grafana/grafana

## 설치
https://github.com/grafana/helm-charts/tree/main/charts/grafana
```
# get repo info
$ helm repo add grafana https://grafana.github.io/helm-charts
$ helm repo update
# install chart
$ kubectl create ns monitoring
$ helm install grafana grafana/grafana --namespace monitoring
```
## 외부 접속
https://github.com/grafana/helm-charts/tree/main/charts/grafana
```
$ helm install grafana grafana/grafana \
  --set service.type=NodePort \
  --namespace monitoring 
```

## 삭제
```
helm uninstall grafana --namespace monitoring
```
