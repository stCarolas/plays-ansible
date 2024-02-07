Что это
-------
Ansible playbook с набором ролей для раскатки некоторого количества софта

# Как раскатать
Раскатывается:  
`sh ./fresh.sh`. который под капотом производит:
```
sudo dnf -y install ansible
ansible-galaxy collection install -r requirements.yml
ansible-playbook play.yml -K
```
Использует ansible.cfg, если вы не определили в sys env свой конфиг. По умолчанию запрашивает пароль от рута.
