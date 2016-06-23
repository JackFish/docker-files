if test -z $hostName
then
echo "hostName is not set!"
else
echo "set hostName with ${hostName}"
sed -i "s/hostName=127.0.0.1/hostName=${hostName}/g" /metaq/taobao/metamorphosis-server-wrapper/conf/server.ini
fi