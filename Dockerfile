FROM python:3.10-slim-buster

# Update package list and install system dependencies
RUN apt update && apt upgrade -y && \
    apt install -y git build-essential libssl-dev libffi-dev python3-dev

# Copy requirements file and install Python dependencies
COPY requirements.txt /requirements.txt
RUN pip install --no-cache-dir -U pip && pip install --no-cache-dir -U -r /requirements.txt

# Create and set the working directory
RUN mkdir /Work-Flow
WORKDIR /Work-Flow

# Copy the start script
COPY start.sh /start.sh

# Run the start script
CMD ["/bin/bash", "/start.sh"]
