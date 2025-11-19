#!/bin/bash
cd /opt/demo

PID=$(pgrep -f 'demo-0.0.1-SNAPSHOT.jar')
if [ -n "$PID" ]; then
  echo "Stopping old process: $PID"
  kill -9 "$PID"
fi

echo "Starting application..."
nohup java -jar demo-0.0.1-SNAPSHOT.jar > app.log 2>&1 &
