from mappings import paths
import os

for actual_path, repo_path in paths:
    actual_path = os.path.expanduser(actual_path)
    if repo_path == '':
        repo_path = os.path.basename(actual_path)
        
    dest_dir = os.path.dirname(repo_path)
    if dest_dir != "" and not os.path.exists(dest_dir):
        os.makedirs(dest_dir)
        
    if os.path.exists(repo_path):
        # os.remove(repo_path)
        print(f'Ignoring {actual_path}')
        continue
    print(f'Linking {actual_path} to {repo_path}')
    os.link(actual_path, repo_path)
