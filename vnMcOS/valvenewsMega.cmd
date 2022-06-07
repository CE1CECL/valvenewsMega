tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "!!! Error getting URL !!!" && exit 1
echo UserName: vnM
echo Password: #valvenewsMega
