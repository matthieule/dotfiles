# Arterys related tools

export PYTHONPATH=/Users/matthieule/Documents/Dev/vision:$PYTHONPATH
export PATH="/Users/matthieule/anaconda3/bin:$PATH"

alias sync_deepterys="rsync -vaP --exclude 'dev_env_ubuntu.ini' --exclude 'environment_ubuntu.yml' --exclude 'autil/dev_env.py' /Users/matthieule/Documents/Dev/vision/ deepterys:/home/matthieu/Dev/vision"

alias sync_deepdanish="rsync -vaP --exclude 'dev_env_ubuntu.ini' --exclude 'environment_ubuntu.yml' --exclude 'autil/dev_env.py' /Users/matthieule/Documents/Dev/vision/ deepdanish:/home/matthieu/Dev/vision"

# Load deepterys and deepdanish to finder
  if [ ! -d /Users/matthieule/deepterys/Dev/ ]; then
    sshfs deepterys:. deepterys/ -ovolname=deepterys;
 fi
 if [ ! -d /Users/matthieule/deepdanish/Dev/ ]; then
         sshfs deepdanish:. deepdanish/ -ovolname=deepdanish;
 fi
