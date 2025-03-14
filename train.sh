#!/bin/bash

python3 main_pretrain.py \
    --config-path scripts/pretrain/imagenet-100/ \
    --config-name barlow.yaml
    # add new arguments (e.g. those not defined in the yaml files)
    # by doing ++new_argument=VALUE
    # pytorch lightning's arguments can be added here as well.