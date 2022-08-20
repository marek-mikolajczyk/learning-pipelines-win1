PROJECT_ID="2"
PROJECT_ENV="prod"
TF_USERNAME="2"
TF_PASSWORD="rUAgy58ywzv7_WxMna6J"
TF_ADDRESS="http://gitlab/api/v4/projects/${PROJECT_ID}/terraform/state/${PROJECT_ENV}"

terraform init \
  -backend-config=address=${TF_ADDRESS} \
  -backend-config=lock_address=${TF_ADDRESS}/lock \
  -backend-config=unlock_address=${TF_ADDRESS}/lock \
  -backend-config=username=${TF_USERNAME} \
  -backend-config=password=${TF_PASSWORD} \
  -backend-config=lock_method=POST \
  -backend-config=unlock_method=DELETE \
  -backend-config=retry_wait_min=5

