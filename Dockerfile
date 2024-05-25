# Use the latest Windows Nano Server base image
FROM mcr.microsoft.com/windows/nanoserver:ltsc2019

# Install Python, pip, and Git using Chocolatey
RUN powershell -Command \
    Set-ExecutionPolicy Bypass -Scope Process -Force; \
    [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; \
    iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1')); \
    choco install -y python3 git

# Install PyYAML using pip
RUN pip install PyYAML

# Copy your application files into the container
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint for your application
ENTRYPOINT ["/entrypoint.sh"]
