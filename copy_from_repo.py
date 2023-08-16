from mappings import paths
import os

########################################################
###                                                  ###
### COPY FROM REPO TO SOURCE - OVERWRITES YOUR FILES ###
###                                                  ###
########################################################

for repo_path, actual_path in paths:
    repo_path = os.path.expanduser(repo_path)
    if actual_path == '':
        actual_path = os.path.basename(repo_path)
        
    dest_dir = os.path.dirname(actual_path)
    if dest_dir != "" and not os.path.exists(dest_dir):
        os.makedirs(dest_dir)
        
    if os.path.exists(actual_path):
        # os.remove(actual_path)
        print(f'Ignoring {repo_path}')
        continue
    print(f'Linking {repo_path} to {actual_path}')
    os.link(repo_path, actual_path)
