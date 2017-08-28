#!/bin/bash

# curl --include --request PATCH http://localhost:4741/vegetables$ID \
#   --header "Content-Type: application/json" \
#   --data '{
#     "vegetable": {
#       "name": "'"${NAME}"'",
#       "image": "'"${IMAGE}"'",
#       "comment": "'"${COMMENT}"'"
#     }
#   }'
#
# echo
curl --include --request PATCH http://localhost:4741/vegetables/8 \
  --header "Content-Type: application/json" \
  --data '{
    "vegetable": {
      "name": "Squash",
      "image": "http://i.imgur.com/IysO0qE.jpg",
      "comment": "4 rows planted"
    }
  }'

  # API="${API_ORIGIN:-http://localhost:4741}"
  # URL_PATH="/vegetables/$ID"
  # curl "${API}${URL_PATH}" \
  #   --include \
  #   --request PATCH \
  #   --header "Content-Type: application/json" \
  #   --header "Authorization: Token token=BAhJIiU4ZTVhZTZlNTI5NWQ2OTFjOTI4ZTBmMWJlOTk3MWU1MwY6BkVG--07e25743e5fcd16db41b37f1d1f9ca95870ea429" \
  #   --data '{
  #     "vegetable": {
  #       "name": "Corn",
  #       "image": "http://i.imgur.com/IysO0qE.jpg",
  #       "comment": "4 rows planted"
  #     }
  #   }'

echo
