#!/bin/sh
if [ ! -f UUID ]; then
  UUID="6bd13ab2-7da1-42fb-a932-feef8927dcfb"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

