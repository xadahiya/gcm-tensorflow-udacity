# Install anaconda
wget http://repo.continuum.io/archive/Anaconda3-4.0.0-Linux-x86_64.sh
bash Anaconda3-4.0.0-Linux-x86_64.sh

## Activate anaconda path variables in the same shell session
source ~/.bashrc

## Install tensorflow and tqdm modules
conda install -c conda-forge tensorflow
conda install -c conda-forge tqdm

## Generate jupyter default configuration file
jupyter notebook --generate-config

## Config to run jupyter notebook remotely in browser
echo "c = get_config()" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.ip = '*'" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.open_browser = False" >> ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.port = 8123" >> ~/.jupyter/jupyter_notebook_config.py

## Install Screen
sudo apt-get install screen
## Start a screen session with name jupyter
screen -S jupyter

## Make dir notebooks and run jupyter notebook in detached mode
cd ~/
mkdir notebooks
cd notebooks
jupyter notebook -d

# Use this to attach to the jupyter session
# screen -r jupyter
