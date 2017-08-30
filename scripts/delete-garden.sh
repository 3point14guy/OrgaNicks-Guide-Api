#!/bin/bash
ID=4
TOKEN=BAhJIiVjZjk2MmJiMWQyMTg1ODVmYzBjMTM5ZjdhZTZiOWNjMgY6BkVG--e3aea431bd45aa78fd22cf435d3b67d7b2fd54af
curl --include --request DELETE http://localhost:4741/gardens/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

  echo
