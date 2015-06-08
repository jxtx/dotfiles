ARCH=`uname -s`_`uname -m`

# System administration commands
PATH=$PATH:/usr/sbin:/sbin

# Prepend /usr/gnu/bin if it exists (GNU-ish userspace on Solaris/OpenSolaris)
if [ -d /usr/gnu/bin ]; then
    PATH=/usr/gnu/bin:$PATH
fi

# Prepend /opt/local/bin if it exists (MacPorts on Darwin)
if [ -d /opt/local/bin ]; then
    PATH=/opt/local/bin:$PATH
fi

# Ruby on homebrew on Mac OS X
if [ -d /usr/local/opt/ruby/bin ]; then
    PATH=/usr/local/opt/ruby/bin:$PATH
fi

# Always prepend /usr/local/bin
PATH=/usr/local/bin:$PATH

# And always prepend architecture specific bin directory under $HOME, as well
PATH=$HOME/arch/$ARCH/bin:$HOME/bin:$PATH:/usr/local/Cellar/ruby/1.9.3-p194/bin

## # Python 2.6+ 
## PYTHONUSERBASE=$HOME/arch/$ARCH

# Mac...
PYTHONPATH=/Library/Python/2.7/site-packages:/usr/local/lib/python2.7/site-packages

# npm global install
PATH=`npm bin -g 2>/dev/null`:$PATH

# For Ruby gems installed in home directory
if [ -d ~/.gem ]; then
    PATH=$PATH:$HOME/.gem/ruby/1.8/bin
fi

# I don't automatically add this to the path, but a nice variable to have
SW=/aut/proj/bx/sw/arch/$ARCH

export ARCH PATH PYTHONUSERBASE PYTHONPATH LD_LIBRARY_PATH SW
