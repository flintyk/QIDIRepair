#!/bin/bash
#name:Show API KEY
#dir:General
#description:Shows API KEY
echo "Your API KEY"
curl -s localhost/access/api_key | jq -r '.result'
exit 0