#!/bin/bash -xe

arch=$(uname -m)
image_name="manylinux-ssh-python-${arch}"
if [[ ${arch} == "aarch64" ]]; then
  dockerfile="Dockerfile.aarch64"
else
  dockerfile="Dockerfile.2014_x86_64"
fi

docker build -t "${image_name}" -f "ci/docker/manylinux/${dockerfile}" ci/docker/manylinux
