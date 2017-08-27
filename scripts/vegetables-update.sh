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
curl --include --request PATCH http://localhost:4741/vegetables/4 \
  --header "Content-Type: application/json" \
  --data '{
    "vegetable": {
      "name": "Corn",
      "image": "http://i.imgur.com/IysO0qE.jpg",
      "comment": "4 rows planted"
    }
  }'

echo
