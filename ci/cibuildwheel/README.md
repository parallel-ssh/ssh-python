# Building a manylinux wheel locally
This directory contains files to allow the building of a local wheel on a linux using [cibuildwheel](https://github.com/pypa/cibuildwheel).
It is configured to only build cpython wheels for python 3.10 - 3.12 on either x86_64 or aarch64 architectures but could be expanded.

## Prequisites
You must have docker or podman-docker installed on your machine along with the cibuildwheel python package.
### Debian based OSes
```
sudo apt get install podman-docker
pip install cibuildwheel
```

### Fedora based Oses
```
sudo dnf install podman-docker
pip install cibuildwheel
```

## Building wheels
All commands should be run from the root level of the repo.
```
./ci/cibuildwheel/build-image.sh
cibuildwheel --config-file ci/cibuildwheel/config.toml
```
> Note: If you cannot build/run [rootless containers](https://github.com/containers/podman/blob/main/docs/tutorials/rootless_tutorial.md) you will need to 
> run these commands prefixed with sudo

You will find the build wheels present in the `wheelhouse` directory. These can be installed into the current python environment with `pip install <wheel>`
