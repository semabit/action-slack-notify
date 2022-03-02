if [ -z "$1" ]; then
    echo 'Version missing! e.g. v2.3.0, also update in action.yml'
    exit 1
fi

# use password from keepass (github - personal access token - Container Registry)
docker login ghcr.io -u softwaresemabit

docker build . --tag ghcr.io/softwaresemabit/action-slack-notify:$1
docker push ghcr.io/softwaresemabit/action-slack-notify:$1

docker build . --tag ghcr.io/softwaresemabit/action-slack-notify:latest
docker push ghcr.io/softwaresemabit/action-slack-notify:latest
