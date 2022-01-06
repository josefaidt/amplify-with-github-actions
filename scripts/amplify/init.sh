#!/bin/bash
set -e
IFS='|'

# REACTCONFIG="{\
# \"SourceDir\":\"src\",\
# \"DistributionDir\":\"build\",\
# \"BuildCommand\":\"npm run-script build\",\
# \"StartCommand\":\"npm run-script start\"\
# }"

AWSCLOUDFORMATIONCONFIG="{\
\"configLevel\":\"project\",\
\"useProfile\":false,\
\"profileName\":\"default\",\
\"accessKeyId\":\"$AWS_ACCESS_KEY_ID\",\
\"secretAccessKey\":\"$AWS_SECRET_ACCESS_KEY\",\
\"region\":\"us-east-1\"\
}"

AMPLIFY="{\
\"envName\":\"$ENV_NAME\"
}"

# FRONTEND="{\
# \"frontend\":\"javascript\",\
# \"framework\":\"react\",\
# \"config\":$REACTCONFIG\
# }"

PROVIDERS="{\
\"awscloudformation\":$AWSCLOUDFORMATIONCONFIG\
}"

amplify init \
--amplify $AMPLIFY \
# --frontend $FRONTEND \
--providers $PROVIDERS \
--yes