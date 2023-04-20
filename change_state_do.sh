export VAR=http://192.168.10.3/digitaloutput/all/value




wget -O - --no-check-certificate --quiet \
  --method POST \
  --timeout=0 \
  --header 'Authorization: Basic cm9vdDowMDAwMDAwMA==' \
  --header 'Content-Type: text/plain' \
  --body-data 'DO0=1' \
   "$VAR"

echo 
echo ....
echo ....

wget -O - --no-check-certificate --quiet \
   --method GET \
   --timeout=0 \
   --header 'Authorization: Basic cm9vdDowMDAwMDAwMA==' \
    "$VAR"
echo 
echo ....
echo ....
sleep 20

wget -O - --no-check-certificate --quiet \
  --method POST \
  --timeout=0 \
  --header 'Authorization: Basic cm9vdDowMDAwMDAwMA==' \
  --header 'Content-Type: text/plain' \
  --body-data 'DO0=0' \
   "$VAR"

echo 
echo ....
echo ....

wget -O - --no-check-certificate --quiet \
   --method GET \
   --timeout=0 \
   --header 'Authorization: Basic cm9vdDowMDAwMDAwMA==' \
    "$VAR"
