FROM docker:stable
LABEL vendor1="DeusOps"
LABEL vendor2="Konstantin Deepezh aka D3pRe5s"

RUN apk add --no-cache \
    python3 python3-dev py3-pip gcc git curl build-base autoconf automake \
    py3-cryptography linux-headers musl-dev libffi-dev openssl-dev openssh \
    make ansible-lint

RUN pip install ansible && \
    pip install molecule && \
    pip install 'molecule[docker]' && \
    pip install 'molecule[vagrant]' && \
    pip install yamllint
#    pip install ansible-lint
#    pip install --ignore-installed distlib==0.3.1 && \

COPY molecule.yml /usr/lib/python3.8/site-packages/molecule/cookiecutter/molecule/{{cookiecutter.role_name}}/{{cookiecutter.molecule_directory}}/{{cookiecutter.scenario_name}}

WORKDIR /role

#CMD molecule test
