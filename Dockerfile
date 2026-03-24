# Linux Lab Toolkit
# Runs on a lightweight Ubuntu base with bash and git pre-installed
FROM ubuntu:22.04

# Install dependencies — git is needed for screensaver.sh to pull the repo
RUN apt-get update && apt-get install -y \
    bash \
    git \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Create the app directory inside the container
WORKDIR /app

# Copy all scripts into the container
COPY menu.sh .
COPY screensaver.sh .
COPY docker-setup.sh .

# Make all scripts executable
RUN chmod +x menu.sh screensaver.sh docker-setup.sh

# When the container starts, run the main menu
ENTRYPOINT ["bash", "/app/menu.sh"]
