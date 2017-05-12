from fabric.operations import local, sudo
from fabric.api import task, warn_only, env
from sys import platform as _platform
import os

HOME = os.environ.get("HOME")
env.hosts = ['localhost']
env.warn_only = True
env.cwd = os.getcwd()

@task
def setup_vim():
    with warn_only():
        result = local("which vim")
        if result.return_code != 0:
            if _platform == 'darwin':
                local("brew install vim")
            elif _platform == 'linux2':
                sudo("apt-get install vim")
    if os.path.exists(HOME + "/.vim"):
        local("mv $HOME/.vim $HOME/.vim.orig")
    local("ln -s " + env.cwd + "/vim $HOME/.vim")
    if os.path.exists(HOME + "/.vimrc"):
        local("mv $HOME/.vimrc $HOME/.vimrc.orig")
    local("ln -s " + env.cwd + "/vimrc $HOME/.vimrc")

@task
def enable_inputrc():
    if os.path.exists(HOME + "/.inputrc"):
        local("mv $HOME/.inputrc $HOME/.inputrc.orig")
    local("ln -s " + env.cwd + "/inputrc $HOME/.inputrc")

@task
def setup_git():
    #with warn_only():
    print _platform
    result = local("which git")
    print result.return_code
    if result.return_code != 0:
        if _platform == 'darwin':
            local("brew install git")
        elif _platform == 'linux2':
            local("sudo apt-get install git")
    if os.path.exists(HOME + "/.gitconfig"):
        local("mv $HOME/.gitconfig $HOME/.gitconfig.orig")
    local("ln -s " + env.cwd + "/gitconfig $HOME/.gitconfig")

@task
def enable_ohmyzsh():
    with warn_only():
        result = local("which zsh")
        if result.return_code != 0:
            if _platform == 'darwin':
                local("brew install zsh")
            elif _platform == 'linux2':
                local("sudo apt-get install zsh")
        result = local("which wget")
        if result.return_code != 0:
            if _platform == 'darwin':
                local("brew install wget")
            elif _platform == 'linux2':
                local("sudo apt-get install wget")
    local("sudo wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh")
    if os.path.exists(HOME + "/.zshrc"):
        local("mv $HOME/.zshrc $HOME/.zshrc.orig")
    local("ln -s " + env.cwd + "/zshrc $HOME/.zshrc")
    local('sudo chsh -s /bin/zsh')
        
@task
def all():
    enable_ohmyzsh()
    enable_inputrc()
    # setup_git()
    setup_vim()
