#! /bin/bash
echo "---Stopping and removing existing containers---"
docker stop agent-x-dev
docker rm agent-x-dev

echo "---Building the dev image---"
docker build -t agent-x-dev .

echo "---Running the dev image---"
docker run -it \
    -e SLACK_BOT_TOKEN=$SLACK_BOT_TOKEN \
    -e SLACK_APP_TOKEN=$SLACK_APP_TOKEN \
    --name agent-x-dev \
    agent-x-dev