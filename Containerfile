FROM quay.io/fedora/fedora-bootc:41
RUN dnf install -y ansible git 'dnf5-command(copr)'
RUN cd /tmp && git clone https://github.com/stCarolas/plays-ansible
RUN cd /tmp/plays-ansible && ansible-galaxy collection install -r requirements.yml && ansible-playbook --tags system playbook.yml
