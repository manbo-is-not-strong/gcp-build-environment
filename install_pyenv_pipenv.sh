echo "Input your password" | sudo apt update && sudo apt install -y --no-install-recommends \
        build-essential \
        libffi-dev \
        libssl-dev \
        zlib1g-dev \
        libbz2-dev \
        libreadline-dev \
        libsqlite3-dev \
        git \
	tmux \
	htop
sudo apt-get install liblzma-dev

# Download pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Update .bash_profile
touch ~/.bash_profile
echo "# pyenv paths" >> ~/.bash_profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
pyenv -v

# Install Python and set default
pyenv install 3.7.6
pyenv global 3.7.6

# Install pipenv
pip install pipenv