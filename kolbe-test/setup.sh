#!/usr/bin/env bash

declare -a pid
{ curl --proto '=https' --tlsv1.2 -sSf https://tiup-mirrors.pingcap.com/install.sh | sh; } &
pid+=($!)
{ apt update -y && apt install -y mariadb-client; } &
pid+=($!)
wait "${pid[@]}"
