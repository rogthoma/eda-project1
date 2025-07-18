FROM quay.io/ansible/ansible-rulebook:latest

COPY requirements.yml /tmp/requirements.yml

RUN ansible-galaxy collection install -r /tmp/requirements.yml