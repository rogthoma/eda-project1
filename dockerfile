# Start from an appropriate base image, possibly one you are already using for Ansible
FROM quay.io/ansible/ansible-runner:latest

# Copy the requirements file into the image
COPY requirements.yml /tmp/requirements.yml

# Install the necessary Ansible collections
RUN ansible-galaxy collection install -r /tmp/requirements.yml

# Set the default command (optional, adjust based on your needs)
CMD ["ansible-runner", "--version"]