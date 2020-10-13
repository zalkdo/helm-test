# cluster-autoscaler

https://github.com/kubernetes/autoscaler/tree/master/cluster-autoscaler

kubernetes Version�� CA Version�� ����� ��.

## ��ġ

eks terraform apply �� 'aws_account_id'�� values.yml�� �Է�

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

## ������Ʈ
