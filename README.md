Что это
-------
Anible playbook с набором ролей для раскатки некоторого количества софта, интеграций межжду ними и их настроек.

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