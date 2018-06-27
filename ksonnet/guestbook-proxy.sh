kubectl proxy --port=8002 > /dev/null &
   KC_PROXY_PID=$!
   SERVICE_PREFIX=http://localhost:8002/api/v1/proxy
   GUESTBOOK_URL=$SERVICE_PREFIX/namespaces/ks-dev/services/guestbook-ui

open $GUESTBOOK_URL
