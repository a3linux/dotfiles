Dotfiles
==================

## Overview
Most common dotfiles used both for Linux and MacOS working environemnts to replace the old my.config.

1. Vim 8 really introduces many modern features to avoid using many of old plugins and ways
2. Rely on git submodules to better management of plugins of Vim 8
3. Clean roadmap and document for dotfiles

## Plugins managed by vim 8 native way and git submodule

1. git submodule add <github-repo-url> <path-to-plugin>
2. git commit -m "Added submodules"
3. git clone --recursive <this-repos-url>

### To delete a added plugin

The same steps for delete a git submodule,

1. Delete the relevant section from the .gitmodules file.
2. Stage the .gitmodules changes git add .gitmodules
3. Delete the relevant section from .git/config.
4. Run git rm --cached path_to_submodule (no trailing slash).
5. Run rm -rf .git/modules/path_to_submodule
6. Commit git commit -m "Removed submodule <name>"
7. Delete the now untracked submodule files
8. rm -rf path_to_submodule

## Powerline fonts

Some vim UI plugin like vim-airline uses powerline fonts, which should be a patched version of standard. To install powerline fonts, please,

```
# git clone https://github.com/powerline/fonts.git
# cd fonts
# ./install.sh
```

## Install fzf and about fzf.vim

### Install fzf

1. MacOS "brew install fzf"
2. Linux Fedora, "dnf install fzf"

### fzf.vim

fzf.vim - A FZF vim plugin install into dotvim/pack/third/start already.

### Install rg(ripgrep) and ag

fzf.vim integrate file search tool rg and ag already with command *Rg* and *Ag*
