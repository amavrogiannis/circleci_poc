CIRCLECI_TOKEN="CCIPAT_EtPfFC6DMgP2Dnk1e4enLC_4865ed8632b9ff95a4b16c84c7c3d8b2159530f2"
VCS_TYPE=github
USERNAME=amavrogiannis
PROJECT=circleci_poc

curl -s "https://circleci.com/api/v2/project/$VCS_TYPE/$USERNAME/$PROJECT/pipeline?circle-token=$CIRCLECI_TOKEN" | jq '.' > circleci_jobs.json
