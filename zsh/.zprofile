# ======================= USE THIS FILE TO ADD PATHS TO $PATH ========================= #
PATH=/usr/bin:/bin:/usr/sbin:/sbin
PATH="/usr/local/bin:$PATH"
PATH="$PATH:/usr/local/sbin"
PATH="$PATH:$HOME/bin"
PATH="/usr/local/share/python/:$PATH"

# flutter
PATH="$PATH:/Users/rohithvenkatesh/2Desktop/work/flutter/bin"
PATH="$PATH":"/Users/rohithvenkatesh/2Desktop/work/flutter/.pub-cache/bin"
PATH="$PATH":"/Users/rohithvenkatesh/2Desktop/work/flutter/bin/cache/dart-sdk/bin"

echo -ne "\e]1; \a"

# Setting PATH for Python 3.6
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

export PATH="$HOME/.cargo/bin:$PATH"
