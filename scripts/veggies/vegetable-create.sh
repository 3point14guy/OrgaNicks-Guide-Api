#!/bin/bash

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/vegetables"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=$TOKEN" \
#   --data '{
#     "vegetable": {
#       "name": "'"${NAME}"'"
#       "image": "'"${IMAGE}"'"
#       "comment": "'"${COMMENT}"'"
#     }
#   }'
#
# echo

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/vegetables"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiU4ZTVhZTZlNTI5NWQ2OTFjOTI4ZTBmMWJlOTk3MWU1MwY6BkVG--07e25743e5fcd16db41b37f1d1f9ca95870ea429" \
  --data '{
    "vegetable": {
      "name": "Corn",
      "image": "http://i.imgur.com/IysO0qE.jpg",
      "comments": "Enter comments here"
    }
  }'

echo
