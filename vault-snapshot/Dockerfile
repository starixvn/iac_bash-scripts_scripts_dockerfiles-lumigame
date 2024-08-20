ARG BASE_IMAGE
FROM $BASE_IMAGE
LABEL maintainer=NexOps
#####################################################

RUN apt update && apt install wget unzip

## Install vault-cli
RUN \
	cd /usr/bin && \
	wget https://releases.hashicorp.com/vault/1.17.1/vault_1.17.1_linux_amd64.zip && \
	unzip vault_1.17.1_linux_amd64.zip && rm vault_1.17.1_linux_amd64.zip LICENSE.txt

COPY --chmod=755 vault-snapshot/vault-snapshot.sh /vault-snapshot.sh

CMD ["/vault-snapshot.sh"]