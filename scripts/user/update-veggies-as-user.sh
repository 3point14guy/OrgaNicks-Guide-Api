#!/bin/bash
ID=5
TOKEN=BAhJIiVhM2I5ZWJhYjJlNzA5NDEyNzc2Yzk1N2IxMmI5N2ZiOQY6BkVG--5c479062c7e5fcad4ddc7682a1f8951b640bc7b9
NAME=Broccoli
IMAGE=http://i.imgur.com/L2cURyN.jpg
COMMENTS="used row covers in 2016: heat built up causing early head production"
curl --include --request PATCH http://localhost:4741/vegetables/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
     "vegetable": {
       "name": "'"${NAME}"'",
       "image": "'"${IMAGE}"'",
       "comments": "'"${COMMENTS}"'"
    }
  }'

  echo
