#!/bin/bash
ID=4
API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/dinner_and_diners/$ID"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \

echo
