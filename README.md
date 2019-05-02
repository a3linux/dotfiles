Dotfiles
==================

## Overview
Most common dotfiles used both for Linux and MacOS working environments to replace the old my.config.

1. Vim 8 really introduces many modern features to avoid using many of old plugins and ways
2. Rely on git submodule(s) to better management of plugins of Vim 8
3. Clearly management and document for dotfiles

## Plugins managed by vim 8 native way and git submodule

### Add new plugin with git submodule
1. git submodule add <github-repo-url> <path-to-plugin>
2. git commit -m "Added submodule"

### Using plugins with git submodule

1. git clone --recursive <this-repos-url> or git submodule update --init --recursive

### Update plugins with git submodule

1. Git update

```
git submodule foreach git pull origin master
```

2. Git submodule deattach: git submodule foreach 'git reset --hard'

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

## ALE, LSP, Auto Complete in Vim8

Language server protocol is used for many advanced editors. Here are some documents about LSP and configurations in Vim.

Sample of LSP for different languages, 

```
c	['clangd']
cpp	['clangd']
css	['css-languageserver', '--stdio']
dart	['dart_language_server']
go	['go-langserver', '-mode', 'stdio']
haskell	['hie', '--lsp']
html	['html-languageserver', '--stdio']
javascript	['javascript-typescript-stdio']
julia	['julia', '--startup-file=no', '--history-file=no', '-e', 'using LanguageServer; server = LanguageServer.LanguageServerInstance(STDIN, STDOUT, false); server.runlinter = true; run(server);']
objc	['clangd']
objcpp	['clangd']
php	['php', 'path/to/bin/php-language-server.php']
purescript	['purescript-language-server', '--stdio']
python	['pyls']
ruby	['solargraph', 'stdio']
rust	['rustup', 'run', 'nightly', 'rls']
sh	['bash-language-server', 'start']
typescript	['typescript-language-server', '--stdio']
vue	['vls']
```

Samples to install language server(s)

* Bash
```
npm i -g bash-language-server
```
* JavaScript:
```
npm install -g javascript-typescript-langserver
```
* Python:
```
pip install --user python-language-server
```
* PureScript
```
npm install -g purescript-language-server
```
* Vue:
```
npm install vue-language-server -g
```
* css:
```
npm install -g vscode-css-languageserver-bin
```
* ruby:
```
gem install solargraph
```

### LSP and ALE

Language server is used by two major Vim plugins, first is the ALE, the syntax checker and fixer, the other one should be autocomplete one.

For ALE the configuration item *g:ale_linters* and *g:ale_fixers* just figure out the usage.

### Language server plugins vim-lsp

This plugin depends on *async.vim*.

The *asyncomplete.vim* work with *asyncomplete-lsp.vim* to support vim-lsp.

Most of the language servers register to *vim-lsp* in _dotvimrc_

### Asyncomplete.vim - A pure vim script async auto completion

#### Why asyncomplete.vim?

* Async completion framework
* Vim script
* Good pipiline with Framework + Sources

Sources: 
* vim-lsp, refer to above section of LSP
* asyncomplete-buffer.vim
* asyncomplete-emoji.vim
* asyncomplete-file.vim
* asyncomplete-tags.vim [ vim-gutentags ]
* asyncomplete-omni.vim
* asyncomplete-ultisnips.vim [ UltiSnips + vim-snippets ]
