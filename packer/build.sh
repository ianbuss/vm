#!/bin/bash
packer build -var-file=config.json template.json
rm -rf packer_cache
