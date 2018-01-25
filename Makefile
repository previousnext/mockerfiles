#!/usr/bin/make -f

IMAGE=previousnext/mockernetes

build:
	docker build -t $(IMAGE):apiserver apiserver
	docker build -t $(IMAGE):controller controller
	docker build -t $(IMAGE):scheduler scheduler
	docker build -t $(IMAGE):etcd etcd
	docker build -t $(IMAGE):kubelet kubelet

push:
	docker push $(IMAGE):apiserver
	docker push $(IMAGE):controller
	docker push $(IMAGE):scheduler
	docker push $(IMAGE):etcd
	docker push $(IMAGE):kubelet
