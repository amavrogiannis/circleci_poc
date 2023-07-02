#!/bin/sh
buildevents step $CIRCLE_WORKFLOW_ID $CIRCLE_BUILD_NUM:setup --name "Setup" --service-name "circleci" -- docker_image=$CONTAINER_NAME:$CIRCLE_TAG
docker build . -t $CONTAINER_NAME:CIRCLE_TAG

EXIT_CODE=$?
if [ $EXIT_CODE -ne 0]; then
    buildevents step $CIRCLE_WORKFLOW_ID $CIRCLE_BUILD_NUM:error --name "Error" --service-name "circleci" -- error_message="Image failed to build"
fi 
exit $EXIT_CODE