Что это
-------
Ansible playbook с набором ролей для раскатки некоторого количества софта

Как использовать
----------------
в config надо создать папку, соответствующую hostname машины, на которой раскатываются настройки. В этой папке создать два конфиг файла:
- neovim.json, описывающий какие плейбуки из папки neovim использовать. По названию соответствуют подпапкам в neovim/
- overall.json - аналогично neovim.json

Раскатывается:  
`ansible-playbook system.yml`  
Использует ansible.cfg, если вы не определили в sys env свой конфиг. По умолчанию запрашивает пароль от рута.  
Если есть желание раскатить только один плейбук, то выполняем команду вида: `ap system.yml --extra-vars 'overall=heron'`, 
где вместо heron указываем название нужного плейбука, а вместо overall - папку, в которой он лежит.
