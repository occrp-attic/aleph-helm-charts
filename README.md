# Aleph in KIND

Create cluster

```
make create-infra
```

Create namespaces

```
kubectl create -f namespace.yaml
```

Setup kubectl contexts

```
kubectl config set-context dev --namespace=dev --cluster=kind-alephlocal --user=kind-alephlocal
kubectl config set-context staging --namespace=staging --cluster=kind-alephlocal --user=kind-alephlocal
```

Use one particular context

```
kubectl config use-context staging
```

Set up services like redis, postgres, es
```
make create-services ENV=staging
```

Create secrets etc
```
make create-secrets ENV=staging
make create-service-accounts ENV=staging
```

Install aleph and related services
```
helm install aleph ./helm/aleph -f ./helm/values/staging.yaml
```

Install ingress controller
```
make install-ingress
```

Install ingresses
```
kubectl apply -f ingress.dev.yaml
kubectl apply -f ingress.staging.yaml
```

