#!/bin/bash
TOKEN=BAhJIiVlMmNmZWVjZGU3MDUzNDlhMTI1ZTZlNTQxNjExOGM2MAY6BkVG--deaff732ed3c8333f4257e58d7b09d54e9bb3ef3
curl --include --request POST http://localhost:4741/gardens \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
     "garden": {
       "vegetable_id": "1"
    }
  }'
# don't need user_id bc we have selected current user in controller
echo
