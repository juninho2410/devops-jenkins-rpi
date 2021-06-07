#!/usr/bin/env bash

set -e

if [ "$USE_SECRET" = "S" ]; then
    passwd=$(cat $JENKINS_ADMIN_PASSWORD)
    export JENKINS_ADMIN_PASSWORD=$passwd
fi
exec /sbin/tini -s  -- /usr/local/bin/jenkins.sh "$@"
