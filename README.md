# action-cli

## How to build

> Note: Please increment the version before build.

- Login to the AWS ECR before build

  ```
  aws ecr-public get-login-password --region us-east-1 | docker login --username AWS --password-stdin public.ecr.aws/paidchain
  ```

- Build container image.

  ```
  docker build --no-cache --platform=linux/amd64 -t public.ecr.aws/paidchain/action-cli:1.0.0 .

  docker push public.ecr.aws/paidchain/action-cli:1.0.0
  ```

- Update the action.yml to apply the container image.

  `image: "docker://public.ecr.aws/paidchain/action-cli:1.0.0"`
