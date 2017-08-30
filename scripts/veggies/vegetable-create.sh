#!/bin/bash

NAME=Tomatoes
IMAGE=http://i.imgur.com/Eckc0rt.jpg
COMMENTS="Enter comments here"

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/vegetables"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "vegetable": {
      "name": "'"${NAME}"'",
      "image": "'"${IMAGE}"'",
      "comment": "'"${COMMENT}"'"
    }
  }'

echo

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/vegetables"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --header "Authorization: Token token=$TOKEN" \
#   --data '{
#     "vegetable": {
#       "name": "'"${NAME}"'",
#       "image": "'"${IMAGE}"'",
#       "comment": "'"${COMMENT}"'"
#     }
#   }'
#
# echo
