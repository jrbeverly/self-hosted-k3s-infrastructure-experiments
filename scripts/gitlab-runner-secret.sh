APP_ID=159793
INSTALLATION_ID=21466556
PRIVATE_KEY_FILE_PATH="local-github-runner.pem"

kubectl create secret generic controller-manager \
    -n default \
    --from-literal=github_app_id=${APP_ID} \
    --from-literal=github_app_installation_id=${INSTALLATION_ID} \
    --from-file=github_app_private_key=${PRIVATE_KEY_FILE_PATH}