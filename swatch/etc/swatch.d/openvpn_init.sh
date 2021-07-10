#!/usr/bin/bash
WEBHOOK_URL='https://hooks.slack.com/services/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'
NAME='OpenVPN'
IGNORE_CLIENT=(client-n1)
if [[ -p /dev/stdin ]]; then
  MESSAGE=`cat -`
else
  exit 1
fi
echo ${MESSAGE}
payload="payload={
\"username\":\"${NAME}\",
\"text\":\"*OpenVPN SESSION INIT* \n${MESSAGE}\"
}"
for client in ${IGNORE_CLIENT}
do
  if [[ "`echo ${MESSAGE} | grep ${client}`" ]]; then
  echo "IGNORE"
  else
    curl -s -S -X POST --data-urlencode "${payload}" ${WEBHOOK_URL} > /dev/null
  fi
done

