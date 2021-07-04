FROM docker:stable-dind
LABEL vendor1="DeusOps"
LABEL vendor2="Konstantin Deepezh aka D3pRe5s"

RUN apk add --no-cache \
    python3 python3-dev py3-pip gcc git curl build-base autoconf automake \
    py3-cryptography linux-headers musl-dev libffi-dev openssl-dev openssh && \
    pip install ansible==2.9.5 && \
    pip install --ignore-installed distlib==0.3.1 && \
    pip install molecule==2.22rc6 && \
    pip install 'molecule[docker]'
#CMD molecule test
