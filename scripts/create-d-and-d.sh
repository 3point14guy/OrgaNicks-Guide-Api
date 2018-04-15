#!/bin/bash

VEGETABLE_ID=3
PEST_ID=1

# API="${API_ORIGIN:-http://localhost:4741}"
# URL_PATH="/dinner_and_diner"
# curl "${API}${URL_PATH}" \
#   --include \
#   --request POST \
#   --header "Content-Type: application/json" \
#   --data '{
#     "dinner_and_diner": {
#       "vegetables_id": "'"${VEGETABLE_ID}"'",
#       "pests_id": "'"${PEST_ID}"'"
#     }
#   }'
#
# echo

curl --include --request POST http://localhost:4741/dinner_and_diners \
  --header "Content-Type: application/json" \
  --data '{
    "dinner_and_diner": {
      "vegetable_id": "'"${VEGETABLE_ID}"'",
      "pest_id": "'"${PEST_ID}"'"
    }
  }'

  echo
