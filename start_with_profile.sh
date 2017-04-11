#!/bin/bash
#
# Start SonarQube
./bin/run.sh &

LANGUAGE=java
PROFILE_NAME=StandardProfile
BASE_URL=http://127.0.0.1:9000

function isUp {
  curl -s -u admin:admin -f "$BASE_URL/api/system/info"
}

# Wait for server to be up
PING=`isUp`
while [ -z "$PING" ]
do
  sleep 5
  PING=`isUp`
done

# Restore qualityprofile
curl -v -u admin:admin -F "backup=@/qualityprofile/java-standardprofile.xml" -X POST "$BASE_URL/api/qualityprofiles/restore"
curl -v -u admin:admin -X POST "$BASE_URL/api/qualityprofiles/set_default?language=$LANGUAGE&profileName=$PROFILE_NAME"

wait
