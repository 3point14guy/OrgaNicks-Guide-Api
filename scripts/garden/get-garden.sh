#!/bin/bash

TOKEN=BAhJIiU5ZmU5N2EzZGRjMTRkNWQxOGU4YzFkNTI0Y2YwMGU4NAY6BkVG--8e10e16cb3a8fef259ad31951754592b165711c2
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/gardens"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=$TOKEN"

echo
