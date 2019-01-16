#!/bin/bash
set -e

cd "$(dirname "$0")"

for y in ../_data/config*
do
    [[ $y == *"schema"* ]] && continue
	yamale -s docs/_data/config-schema.yaml $y -p ruamel
done

cd -
