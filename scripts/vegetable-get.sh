#!/bin/bash

API="${API_ORIGIN:-http://localhost:4741}"
URL_PATH="/vegetables"
curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Token token=BAhJIiU4ZTVhZTZlNTI5NWQ2OTFjOTI4ZTBmMWJlOTk3MWU1MwY6BkVG--07e25743e5fcd16db41b37f1d1f9ca95870ea429"

echo
