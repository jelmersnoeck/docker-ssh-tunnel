IMAGE=jelmersnoeck/ssh-tunnel

docker:
	docker build -t ${IMAGE} .

release: docker
	docker push ${IMAGE}
