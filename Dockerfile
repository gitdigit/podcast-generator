FROM ubuntu:latest

# Install Python 3.9.10, pip, and git
RUN apt-get update && apt-get install -y python3.9=3.9.10 python3-pip git

# Install PyYAML library
RUN pip3 install PyYAML

# Copy your Python script and shell script
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint script
ENTRYPOINT [ "/entrypoint.sh"]

# Placeholder for your server generation code (replace comment)
# #generate the server" here is the code
