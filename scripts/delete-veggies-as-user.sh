#!/bin/bash

curl --include --request DELETE http://localhost:4741/vegetables/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

  ech0
