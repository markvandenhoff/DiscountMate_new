#!/bin/sh
echo "🚀 Starting cron service..."
cron
touch /var/log/cron.log
tail -f /var/log/cron.log
