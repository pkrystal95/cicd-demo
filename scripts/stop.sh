#!/bin/bash
cd /opt/demo

PID=$(pgrep -f 'demo-0.0.1-SNAPSHOT.jar')
if [ -n "$PID" ]; then
  echo "Stopping application: $PID"
  kill -9 "$PID"
else
  echo "No running application found."
fi
