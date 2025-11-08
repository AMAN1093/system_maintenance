#!/bin/bash

LOG_FILE="/var/log/syslog"
ALERT_LOG="alerts.log"

echo "Checking logs for errors..."
grep -i "error" "$LOG_FILE" > "$ALERT_LOG"

if [ -s "$ALERT_LOG" ]; then
    echo "⚠️ Errors detected! Check $ALERT_LOG file."
else
    echo "✅ No errors found in logs."
fi

