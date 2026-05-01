source /usr/share/cachyos-fish-config/cachyos-config.fish

if status is-interactive
    # --- Basic Settings ---
    set -g fish_greeting "" # Removes the welcome message

    # --- alias ---
    alias vi='vim'
    
    # --- Abbreviations (The "Fish Way") ---
    # These expand instantly when you hit Space
    abbr -a update 'sudo pacman -Syu'
    abbr -a install 'sudo pacman -S'
    abbr -a remove 'sudo pacman -Rs'
    abbr -a psearch 'sudo pacman -Ss'
    abbr -a reload 'source ~/.config/fish/config.fish'
    abbr -a gs 'git status'
    abbr -a gc 'git commit -m'

    # --- Environment Variables ---
    set -gx EDITOR vim
    set -gx VISUAL vim
    fish_add_path ~/.local/bin ~/bin

    set -g fish_key_bindings fish_hybrid_key_bindings

    # Only source if we are in Ghostty and the variable is set
    if set -q GHOSTTY_RESOURCES_DIR; and test -f "$GHOSTTY_RESOURCES_DIR/shell-integration/fish/vendor_conf.d/ghostty-shell-setup.fish"
        source "$GHOSTTY_RESOURCES_DIR/shell-integration/fish/vendor_conf.d/ghostty-shell-setup.fish"
    end
end

