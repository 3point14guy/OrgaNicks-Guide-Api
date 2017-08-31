#!/bin/bash
TOKEN=BAhJIiVjZjk2MmJiMWQyMTg1ODVmYzBjMTM5ZjdhZTZiOWNjMgY6BkVG--e3aea431bd45aa78fd22cf435d3b67d7b2fd54af
curl --include --request POST http://localhost:4741/gardens \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
     "garden": {
       "vegetable_id": "2"
    }
  }'
# don't need user_id bc we have selected current user in controller
echo
