# cluster-autoscaler

https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler

kubernetes Version과 CA Version을 맞춰야 함.

## 설치

eks terraform apply 후 'aws_account_id'를 values.yml에 입력

```
rbac:
  create: true
  serviceAccountAnnotations:
    eks.amazoneaws.com/role-arn: "arn:aws:iam::<ACCOUNT ID>:role/
    stayfolio-dev-cluster-autoscaler"
```

```
$ helm install cluser-autoscaler stable/cluster-autoscaler \
  --namescpace kube-system \
  --values values.yml
```

## 업데이트
