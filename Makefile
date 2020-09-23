create-cluster:
	@echo "🔴 Creating a k8s cluster ..."
	kind create cluster --name alephlocal --config kind-config.yml

setup-kubectl:
	@echo "🔴 Setting kubectl context to the local k8s cluster"
	kubectl config use-context kind-alephlocal

delete-cluster:
	@echo "🔴 Deleteing the k8s cluster ..."
	kind delete cluster --name alephlocal

add-helm-repo:
	@echo "🔴 Adding helm repos ..."
	helm repo add --force-update bitnami https://charts.bitnami.com/bitnami
	helm repo add --force-update elastic https://helm.elastic.co
	helm repo add --force-update k8s-dashboard https://kubernetes.github.io/dashboard

update-helm:
	@echo "🔴 Updating the helm repos ..."
	helm repo update

install-postgres: update-helm
	@echo "🔴 Installing Postgres database ..."
	helm install postgres bitnami/postgresql -f helm/values/postgres.yml

install-elasticsearch: update-helm
	@echo "🔴 Installing Elasticsearch cluster ..."
	helm install search-index-master elastic/elasticsearch -f helm/values/elasticsearch-master.yml
	helm install search-index-data elastic/elasticsearch -f helm/values/elasticsearch-data.yml

install-k8s-dashboard: update-helm
	helm install k8s-dashboard k8s-dashboard/kubernetes-dashboard

install-redis: update-helm
	@echo "🔴 Installing Redis ..."
	helm install redis stable/redis -f helm/values/redis.yml


install-ingress:
	@echo "🔴 Installing Nginx Ingress  ..."
	kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/kind/deploy.yaml
	kubectl wait --namespace ingress-nginx \
	--for=condition=ready pod \
	--selector=app.kubernetes.io/component=controller \
	--timeout=90s

create-infra: create-cluster setup-kubectl add-helm-repo update-helm

create-services: install-postgres install-elasticsearch install-redis

install-aleph:
	@echo "🔴 Installing Aleph  ..."
	helm install aleph ./helm/aleph -f ./helm/aleph/secrets.yaml