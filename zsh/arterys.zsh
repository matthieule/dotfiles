# Arterys related tools
if [[ $(uname) == "Darwin" ]]; then
	export PATH="/Users/matthieule/miniconda3/bin:$PATH"
	alias sync_deepterys="rsync -vaP --exclude 'dev_env.ini' 'dev_env_ubuntu.ini' --exclude 'environment_ubuntu.yml' --exclude 'autil/dev_env.py' /Users/matthieule/Documents/Dev/vision/ deepterys:/home/matthieu/Dev/vision"
	alias sync_deepdanish="rsync -vaP --exclude 'dev_env.ini' 'dev_env_ubuntu.ini' --exclude 'environment_ubuntu.yml' --exclude 'autil/dev_env.py' /Users/matthieule/Documents/Dev/vision/ deepdanish:/home/matthieu/Dev/vision"
	#Load deepterys and deepdanish to finder
	#if [ ! -d /Users/matthieule/deepterys/Dev/ ]; then
	#	sshfs deepterys:. deepterys/ -ovolname=deepterys;
	#fi
	#if [ ! -d /Users/matthieule/deepdanish/Dev/ ]; then
    #    sshfs deepdanish:. deepdanish/ -ovolname=deepdanish;
	#fi
	alias itksnap="/Applications/ITK-SNAP.app/Contents/MacOS/ITK-SNAP"
elif [[ $(uname) == "Linux" ]]; then
    export PATH="/home/matthieu/miniconda3/bin/:$PATH"
	export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64"
	export CUDA_HOME=/usr/local/cuda
	alias tmux="tmux -2"
else
    echo "Unexpected uname:" $(uname)
    exit 1
fi
export PATH="/usr/local/opt/jpeg-turbo/bin:$PATH"
