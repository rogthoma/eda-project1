# Start from the existing Ansible rulebook image
FROM quay.io/ansible/ansible-rulebook:main

# Install the necessary Ansible collections
RUN ansible-galaxy collection install community.general

# Set the default command to be executed
CMD ["ansible-rulebook", "--version"]