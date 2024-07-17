#!/bin/bash

TWISTLOCK_USERNAME="a9947521-35fa-4978-9f20-1e78eff105d4"
TWISTLOCK_PASSWORD="tWN00EgoZ9Z8ugkp4F9rHoy/g2U="

# Set the Twistlock API endpoint
TWISTLOCK_API_ENDPOINT="https://asia-south1.cloud.twistlock.com/india-1131960831/api/v1/util/twistcli"
TWISTLOCK_COSOLE_URL="https://asia-south1.cloud.twistlock.com/india-1131960831"
# Download the twistcli binary using curl with username and password
curl -k -u "$TWISTLOCK_USERNAME:$TWISTLOCK_PASSWORD" -L -o twistcli "$TWISTLOCK_API_ENDPOINT"

# Provide execute permissions to the downloaded twistcli binary
sudo chmod a+x ./twistcli

echo "Twistlock CLI (twistcli) has been downloaded successfully."

sudo ./twistcli defender install standalone host-linux  --address "$TWISTLOCK_COSOLE_URL" -u "$TWISTLOCK_USERNAME" -p "$TWISTLOCK_PASSWORD"

##########################################################################################################################################

echo "Defenders are successfully installed and deployed"
