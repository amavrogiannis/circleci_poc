CIRCLECI_TOKEN="9160960209a4de167ad4519ed6d04feee9d8c744"
VCS_TYPE="github"
USERNAME="amavrogiannis"
PROJECT="circleci_poc"

curl -s "https://circleci.com/api/v2/project/$VCS_TYPE/$USERNAME/$PROJECT/pipeline?circle-token=$CIRCLECI_TOKEN" | jq '.' > circleci_jobs.json