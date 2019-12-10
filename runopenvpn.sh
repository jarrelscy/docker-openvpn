NAME=`docker ps | grep openvpn | cut -c1-10`
docker stop $NAME
docker rm $NAME
docker run -v /etc/openvpn:/etc/openvpn -d -p 1194:1194/udp  --cap-add=NET_ADMIN jarrelscy/openvpn
