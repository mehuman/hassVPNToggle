A script and configuration to toggle a VPN server from within [Home Assistant](https://home-assistant.io/). Currently only tested with a router running [ASUSMerlin](https://asuswrt.lostrealm.ca/).

Steps:

1. Create keys ```ssh-keygen -t rsa -b 4096 -C "comment"```
2. Copy key to host ```ssh-copy-id user@host```
3. Verfiy the connection ```ssh user@host```. You shouldn't be asked for a password.
4. Place vpntoggle.sh somewhere accessable to Home Assistant and make sure it's executable ```chmod +x vpntoggle.sh```
5. Edit the script to match your configuration.
6. Add the configuration to you Home Assistant. It's of the type switch.

Things to look out for:
If using docker you will need to generate keys within the container. You can access the container with ```docker exec -it CONTAINTER bash```. You will also need to place the script somewhere the containter can find it. I placed mine under the config directory defined in the docker run command.
