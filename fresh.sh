su -c "dnf install ansible"
ansible-galaxy collection install -r requirements.yml
ansible-playbook play.yml
