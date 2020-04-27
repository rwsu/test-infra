#!/usr/bin/env bash
set -e
set -o pipefail

source create_full_environment.sh
source scripts/assisted_deployment.sh

echo "Starting cluster"
export SET_DNS="y"
run "run_full_flow_with_install"
wait_for_cluster