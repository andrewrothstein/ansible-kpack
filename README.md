andrewrothstein.kpack
=========

![Build Status](https://github.com/andrewrothstein/ansible-kpack/actions/workflows/build.yml/badge.svg)

Installs the [kpack cli](https://github.com/buildpacks-community/kpack-cli).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.kpack
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
