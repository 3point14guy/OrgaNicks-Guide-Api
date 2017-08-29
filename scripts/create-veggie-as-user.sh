#!/bin/bash
TOKEN=BAhJIiU3ZjBhZTlkYjZkYWQ2NmRkMWJmMzg2YjFhZjhiNDk4MgY6BkVG--0644e27c860170f5444ea5ec937e0fae88f41874
NAME=Broccoli
IMAGE=http://i.imgur.com/L2cURyN.jpg
COMMENTS=Enter comments here.
curl --include --request POST http://localhost:4741/vegetables \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
     "vegetable": {
       "name": "'"${NAME}"'",
       "image": "'"${IMAGE}"'",
       "comment": "'"${COMMENT}"'"
    }
  }'

echo
