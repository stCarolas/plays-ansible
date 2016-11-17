#!/usr/bin/python

from ansible.module_utils.basic import * 
import subprocess
from pathlib import Path
import os

def get_history_dir(origin_filepath){
    history_dir = origin_filepath + ".history"
    if not os.path.exists(history_dir):
        os.makedirs(history_dir)
    return history_dir
}

def is_sync(patchpath, history_dir){
    patchname = Path(patchpath).name
    if not os.path.exists(history_dir + patchname):
        return false
    diff = subprocess.call(
        ["diff", ]
    )
}
def main():
    module = AnsibleModule(
            argument_spec  = dict(
                path       = dict(required=True),
                patches    = dict(required=False, type='list'),
                patch_dir  = dict(required=False),
                exclude    = dict(required=False, type='list')
            )
         )

    path        = module.params["path"] 
    patches     = module.params["patches"] 
    patch_dir   = module.params["patch_dir"] 
    exclude     = module.params["exclude"] 

    backup_result_code = subprocess.call(["cp", "-f", path, path + ".backup"], stderr=subprocess.PIPE, stdout=subprocess.PIPE)
    if backup_result_code != 0:
        return
    
    if patch_dir != None:
        if patches == None or len(patches) == 0:
            patches = os.listdir(patch_dir)

        if not patch_dir.endswith("/"):
            patch_dir = patch_dir + "/"
    else:
        patch_dir = ""

    if exclude != None and len(exclude) != 0:
        for item in exclude:
            patches.remove(item)

    history_dir = get_history_dir(path);
    for patch in patches:
        patchpath = patch_dir + patch
        subprocess.call(
                ["patch", "-N", "-s", "-r/tmp/test", path, patchpath],
                stderr=subprocess.PIPE, 
                stdout=subprocess.PIPE
        )
    module.exit_json(changed=True)
    
if __name__ == '__main__':
        main()
