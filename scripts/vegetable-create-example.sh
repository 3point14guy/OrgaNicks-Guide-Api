#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/vegetables"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "vegetable": {
      "name": "'"${NAME}"'"
      "image": "'"${IMAGE}"'"
      "comment": "'"${COMMENT}"'"
    }
  }'

echo
