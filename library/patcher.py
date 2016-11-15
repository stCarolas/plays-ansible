#!/usr/bin/python

from ansible.module_utils.basic import * 
import subprocess

def save_patch_in_history(patch_filepath, origin_filepath){
    history_dir = 
    if not os.path.exists(directory):
        os.makedirs(directory)
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

    for patch in patches:
        subprocess.call(["patch", "-N", "-s", "-r/tmp/test", path, patch_dir + patch], stderr=subprocess.PIPE, stdout=subprocess.PIPE)
    module.exit_json(changed=True)
    
if __name__ == '__main__':
        main()
