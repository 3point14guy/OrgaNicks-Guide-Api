#!/bin/bash

TOKEN=BAhJIiVjZjk2MmJiMWQyMTg1ODVmYzBjMTM5ZjdhZTZiOWNjMgY6BkVG--e3aea431bd45aa78fd22cf435d3b67d7b2fd54af
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/gardens"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
