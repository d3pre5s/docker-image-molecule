Molecule Docker Image
=========

Hello! This is source Dockerfile for Molecule. It can be used for automation tests for Ansible roles in your CI/CD tool.

Requirements
------------

All you need is Docker executor

Versions
--------

- [d3pre5s/molecule:2.22](https://hub.docker.com/r/d3pre5s/molecule) – Ansible 2.9.5 + Molecule 2.22 rc6

Example CI/CD Job
-----------------

.gitlab-ci.yml example

```
    stages:
      - test

    test:
      stage: test
      services:
        - docker:dind
      image: d3pre5s/molecule:2.22
      script:
        - molecule test
```

License
-------

BSD

Author Information
------------------

Konstantin Deepezh, https://t.me/deusops
