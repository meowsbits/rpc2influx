#!/usr/bin/env bash

set -e
set -x

mkdir -p ./build/bin
go build -o ./build/bin/rpc2influx ./v2
rsync -avz ./build/bin/rpc2influx coop-do-ethercluster-metrics:/usr/local/bin/

