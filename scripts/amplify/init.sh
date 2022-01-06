#!/bin/bash
set -e
IFS='|'

AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":false,\
\"profileName\":\"default\",\
\"accessKeyId\":\"$AWS_ACCESS_KEY_ID\",\
\"secretAccessKey\":\"$AWS_SECRET_ACCESS_KEY\",\
\"region\":\"us-east-1\"\
}"

AMPLIFY="{\
\"envName\":\"$ENV_NAME\",\
\"defaultEditor\":\"code\"\
}"

PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"

echo "Initializing Amplify project for env: $ENV_NAME"

amplify init \
--amplify $AMPLIFY \
--providers $PROVIDERS \
--yes