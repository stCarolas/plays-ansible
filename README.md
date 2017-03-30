Что это
-------
Ansible playbook с набором ролей для раскатки некоторого количества софта(главным образом - vim, ranger, fzf), интеграций между ними и их настроек.

Как использовать
----------------
Под рутом для установки приложений
`ansible-playbook system.yml --tags system`

Под своим пользователем для раскатки настроек
`ansible-playbook system.yml --skip-tags system`

todos
-----
- вынести настройки nvm из роли bash в роль nvm
- перевести vim с ctags на gnu global
- разобраться с ansible hacking ролью
- Option "XKbOptions" "ctrl:swapcaps" в /etc/X11/xorg.conf.d/keyboard.conf 
- установка VimProcInstall
