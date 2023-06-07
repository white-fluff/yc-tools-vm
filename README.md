# Cloud-tools

VM in Yandex Cloud with all tools to create and manage YC resources.

Image:
```bash
yc compute image list --folder-id standard-images | grep fedora-37
| fd84aafrovb77mh7vj51 | fedora-37-v20230501                                           | fedora-37                                       | f2e7rc7ilhmsrdq2fg36           | READY  |
| fd853fusijqm1o26iam8 | fedora-37-v20230403                                           | fedora-37                                       | f2e8cpl30c8fsc59jutr           | READY  |
| fd85v0mc0lvd02cie4eh | fedora-37-v20230118                                           | fedora-37                                       | f2e1cdsocplhd30lilce           | READY  |
| fd89fsr61qsgfmegh9ju | fedora-37-v20230529                                           | fedora-37                                       | f2edl49p6prqh38adr98           | READY  |
| fd8a6oof3af7o2kpb6r4 | fedora-37-v20230522                                           | fedora-37                                       | f2ekuvoerpg6l9mioo2b           | READY  |
| fd8esecfk3pbnb33j597 | fedora-37-v20230123                                           | fedora-37                                       | f2ejahvqrj1r7bkpa3n7           | READY  |
```

Metadata example:
```yaml
#cloud-config
users:
  - name: <username>
    groups: sudo
    shell: /bin/bash
    sudo: ['ALL=(ALL) NOPASSWD:ALL']
    ssh-authorized-keys:
      - ssh-ed25519 BlabLaBLa324.....

```