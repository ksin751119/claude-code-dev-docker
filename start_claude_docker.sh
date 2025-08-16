#!/bin/bash


 REPO_URL="git@github.com:ksin751119/across-fetcher.git"
 SSH_KEY_PATH="/Users/$(whoami)/.ssh/id_deploy_claude_docker"
 KNOWN_HOSTS="github.com"
 CONTAINER_NAME="my-claude-dev"

bash Script/run_claude_open_isolated.sh \
  --repo-url ${REPO_URL} \
  --ssh-key-path ${SSH_KEY_PATH} \
  --known-host ${KNOWN_HOSTS} \
  --container-name ${CONTAINER_NAME}
