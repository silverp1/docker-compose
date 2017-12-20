FROM buhman/docker-compose:latest

RUN set -ex; \
	version=$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt) \
	curl -L https://storage.googleapis.com/kubernetes-release/release/$version/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
	chmod +x /usr/local/bin/kubectl
	
