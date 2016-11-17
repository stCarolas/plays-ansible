#!/usr/bin/python

from ansible.module_utils.basic import * 
from jinja2 import Template
import os

SERVICE_UNIT_TEMPLATE = "\
[Unit]\
Description=VPN Tunnel\
After=network.target\
\
[Service]\
User={{ user }}\
ExecStart=/usr/bin/ssh -N -R {{ port }}:localhost:{{ port }} {{ dest }}\
\
[Install]\
WantedBy=multi-user.target\
\
"

SERVICE_UNIT_DIRECTORY  = "/etc/systemd/system/"

def define_module():
    module = AnsibleModule(
            argument_spec  = dict(
                dest       = dict(required=True),
                port       = dict(required=True),
                reverse    = dict(required=False, type='Boolean'),
                state      = dict(required=True)
            )
         )
    return module

def main():
    module = define_module()
    dest                     = module.params['dest']
    port                     = module.params['port']
    state                    = module.params['state']
    service_unit_filename    = "ansible_ssh_tunnel_" + dest + "_" + port
    service_unit_path        = SERVICE_UNIT_DIRECTORY + service_unit_filename

    if not os.path.exists(service_unit_path):
        template = Template(SERVICE_UNIT_TEMPLATE)
        template.render(dest=dest, port=port)
        with open(service_unit_path, 'w') as unit:
            unit.write(template)

if __name__ == '__main__':
    main()
