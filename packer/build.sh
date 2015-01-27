#!/bin/bash
packer build template.json
rm -rf packer_cache
