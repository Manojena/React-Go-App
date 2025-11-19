export ip=localhost 
source /root/React-Go-App/local.sh
sed -i "s|http://[0-9.]*:8080|http://${ip}:8080|g" /root/React-Go-App/frontend/.env

