#!/bin/sh
# wait-for-server.sh

set -e

cmd="$@"
URL=$(echo "$RPC_URL" | sed 's/ws/http/')

>&2 echo "Waiting for server on $URL"

until ! curl --output /dev/null --silent "$URL"; do
  >&2 echo "Server is unavailable - sleeping"
  sleep 1
done

>&2 echo "Server is up - executing command"
exec $cmd