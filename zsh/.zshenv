# Add to PATH
if [[ ":$PATH:" != *":$HOME/miniconda3/bin:"* ]]; then
    export PATH="$HOME/miniconda3/bin:$PATH"
fi

if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# Rust
. "$HOME/.cargo/env"
