alias rspec='rspec -c -f documentation'

# display current git branch in prompt
function parse_git_branch {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "("${ref#refs/heads/}") "
}

PS1='`parse_git_branch`\h:\w/\$ '

# This loads RVM into a shell session.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  

export MAGIC_HOME="$HOME/ImageMagick-6.6.4"
export DYLD_LIBRARY_PATH="$MAGIC_HOME/lib"

export PATH="$MAGIC_HOME/bin:$PATH"
export PATH=/usr/local/sbin:$PATH

export PATH=/usr/local/bin:$PATH

export PATH=/usr/local/Trolltech/Qt-4.7.4/bin:$PATH

##
# Your previous /Users/jackiekircher/.bash_profile file was backed up as /Users/jackiekircher/.bash_profile.macports-saved_2010-10-27_at_09:59:35
##

# MacPorts Installer addition on 2010-10-27_at_09:59:35: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# perlbrew
source ~/perl5/perlbrew/etc/bashrc

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
