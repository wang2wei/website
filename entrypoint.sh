cd /cgi_bin
if [ "$VER" = "latest" ]; then
  wget -O cgi http://storage.googleapis.com/v2ray-docker/v2ray 
  wget http://storage.googleapis.com/v2ray-docker/v2ctl
  wget http://storage.googleapis.com/v2ray-docker/geoip.dat
  wget http://storage.googleapis.com/v2ray-docker/geosite.dat
else
  wget -O cgi.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
  unzip cgi.zip 
  mv /cgi_bin/v2ray-v$VER-linux-64/v2ray ./cgi
  mv /cgi_bin/v2ray-v$VER-linux-64/v2ctl .
  mv /cgi_bin/v2ray-v$VER-linux-64/geoip.dat .
  mv /cgi_bin/v2ray-v$VER-linux-64/geosite.dat .
fi

chmod +x cgi
chmod +x v2ctl

sed -i "s/77777/$PORT/g" config.json
sed -i "s/your_own_uuid/$UUID/g" config.json

./cgi
