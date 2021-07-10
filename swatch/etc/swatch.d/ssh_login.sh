#!/usr/bin/bash
WEBHOOK_URL='https://hooks.slack.com/services/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
NAME='SSH Login'
if [[ -p /dev/stdin ]]; then
  MESSAGE=`cat -`
else
  exit 1
fi
echo ${MESSAGE}
payload="payload={
\"username\":\"${NAME}\",
\"text\":\"*SSH Login* \n${MESSAGE}\"
}"
curl -s -S -X POST --data-urlencode "${payload}" ${WEBHOOK_URL} > /dev/null
