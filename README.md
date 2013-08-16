pi_getip
========

Rails-API app to allow Rasberry PI to checkin with IP and mac on boot.

Test the API with curl. Start the server with 'rails server' first.

curl -d "host[ip]=199.199.1.1" -d "host[mac]=55:55:55:55:55:55" http://localhost:3000/hosts

To confirm the creation, run 'rails console' and then 'Host.last'
