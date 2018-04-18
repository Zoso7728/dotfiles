# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# colors during completion
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}