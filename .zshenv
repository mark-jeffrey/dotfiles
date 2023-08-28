# .zshenv
# ALWAYS sourced unlike .zprofile and .zshrc

# MacOS env 
if [[ "$OSTYPE" =~ "darwin" ]]; then
  # Add /usr/local/bin to PATH
  export PATH="/usr/local/bin:${PATH}"

  # Setting PATH for Python 3.9
  export PATH="/Library/Frameworks/Python.framework/Versions/3.9/bin:${PATH}"

  # Update PATH for the Google Cloud SDK
  if [ -f '/Users/mark/google-cloud-sdk/path.zsh.inc' ]; then
    source '/Users/mark/google-cloud-sdk/path.zsh.inc'
  fi

  # Enable shell command completion for gcloud
  if [ -f '/Users/mark/google-cloud-sdk/completion.zsh.inc' ]; then
    source '/Users/mark/google-cloud-sdk/completion.zsh.inc'
  fi

  # Add Ruby and Gem paths to PATH
  export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
  export PATH="$HOME/.gem/ruby/3.0.0/bin:$PATH"

  # Go path 
  export PATH="/usr/local/opt/ruby/bin:/usr/local/lib/ruby/gems/3.0.0/bin:$PATH"
  export PATH="$HOME/Users/mark/go/bin:$PATH"
  
# WSL env
elif [[ "$OSTYPE" == "linux-gnu" ]]; then

  # Add /usr/lib and /usr/local/lib to PATH
  export LD_LIBRARY_PATH="/lib:/usr/lib:/usr/local/lib:/usr/.local/bin"
  export PATH="/home/mark/.local/bin:$PATH"
  export PATH="$PATH:/mnt/c/Program\ Files"
  
  # Set up Homebrew environment
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

else
    echo "Unsupported operating system"
fi

# Universal settings

# Set up Rust environment
. "$HOME/.cargo/env"

# Set timezone
export TZ="Europe/London"

