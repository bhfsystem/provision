#!/usr/bin/env bash

function main {
  lvreduce -f -L 1M inception/placeholder
  lvcreate -l '50%FREE' -n lxd inception
  lvcreate -T -l '50%FREE' inception/docker --poolmetadatasize 32M -c 1M || true
}

main "$@"
