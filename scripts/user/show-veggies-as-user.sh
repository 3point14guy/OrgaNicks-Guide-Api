#!/bin/bash

curl --include --request POST http://localhost:4741/vegetables/$ID \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
    }
  }'

echo
