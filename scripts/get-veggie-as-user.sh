#!/bin/bash

curl --include --request POST http://localhost:4741/vegetables \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
    }
  }'

echo