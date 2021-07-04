Molecule Docker Image
=========

Hello! This is source Dockerfile for Molecule. It can be used for automation tests for Ansible roles in your CI/CD tool.

Requirements
------------

All you need is Docker executor

Example CI/CD Job
----------------

.gitlab-ci.yml example

```
    stages:
    - test
 
    test:
      stage: test
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
