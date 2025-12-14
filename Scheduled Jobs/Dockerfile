FROM python:3.10-slim

# Install cron
RUN apt-get update && apt-get install -y cron

WORKDIR /app

# Copy script
COPY script.py /app/script.py

# Copy cronjob config
COPY cronjob /etc/cron.d/cronjob

# Set proper permissions
RUN chmod 0644 /etc/cron.d/cronjob

# Register new cronjob
RUN crontab /etc/cron.d/cronjob

# Create log file
RUN touch /var/log/cron.log

# Entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]
