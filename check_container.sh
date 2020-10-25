CONTAINER_NAME='lookahead'

CID=$(docker ps -q -f status=running -f name=^/${CONTAINER_NAME}$)
if [ ! "${CID}" ]; then
  echo "Container doesn't exist"
  docker-compose up -d
fi
unset CID