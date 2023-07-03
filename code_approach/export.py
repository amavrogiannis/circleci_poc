import requests
import json

# Set your variables
CIRCLECI_TOKEN = 'CCIPAT_EtPfFC6DMgP2Dnk1e4enLC_4865ed8632b9ff95a4b16c84c7c3d8b2159530f2'
VCS_TYPE = 'github'
USERNAME = 'amavrogiannis'
PROJECT = 'circleci_poc'

# Set the API URL
url = f"https://circleci.com/api/v2/project/{VCS_TYPE}/{USERNAME}/{PROJECT}/pipeline"

# Set the headers to include your CircleCI token
headers = {
    'Circle-Token': CIRCLECI_TOKEN,
}

# Make the API request
response = requests.get(url, headers=headers)

# Save the response to a JSON file
with open('circleci_jobs_py.json', 'w') as f:
    json.dump(response.json(), f, indent=4)
