#!/usr/bin/env bash

declare -a pid
{ apt update -y && apt install -y mariadb-client; } &
pid+=($!)
wait "${pid[@]}"
