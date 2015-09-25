# My VIM text editor setup

## What is this?

I appreciate a good IDE (hi JetBrains and Sublime Text) but love the speed and flexibility of [vim](http://www.vim.org/) and [MacVim](https://github.com/macvim-dev/macvim). After years of Sublime Text 2/3 use I moved back to `vim` but did not want to loose anything I got used to. My primary motivation being the lack of a good `go` plugin and my lag of mouse use. This is my daily used configuration of plugins and settings using MacVim on OS X.

## How does it look?

![Screenshot 1](http://get.140.am/i/iIaAUTiMJM_TxcFqKf-lQWS56rtgGI0qxkgE6IVpEDk.png)


## Installation

Clone the repository to your machine:

> git clone git://github.com/140am/.vim.git ~/.vim  
> cd .vim  
> git submodule init  
> git submodule update  
> cat ~/.vim/vimrc > ~/.vimrc

Start `vim` or `mvim` (MacVim).

Install go tools if required (gocode, godef, goimport,..) within `vim` via:

> :GoInstallBinaries


## Requirements

Vim 7.4+ with lua support (required by the neocomplete plugin).

To install the latest `vim` on OSX using [homebrew](http://brew.sh/) run:

> brew install vim --with-lua --override-system-vim

To install MacVim run:

> brew install macvim --with-lua --with-cscope

Start with `macvim`.

### Optional

The `tagbar` source code browser requires ctags:

> brew install ctags

If you plan on using `go` install:

> brew install gotags

To make use of the `ag` search plugin install:

> brew install the_silver_searcher


## Example Keyboard Shortcuts

- ctrl + n : file explorer
- ctrl + t : tag bar
- ctrl + b : buffer explorer
- ctrl + z : fullscreen zen mode

- \\ + ig : Highlight 

## Included Plugins

### pathogen
Manages the vim runtime. To install any new vim plugin simply place them into `.vim/bundle`.

### fugitive
Great `git` wrapper giving you everything to use git from within vim.

### gitgutter
Showing `git diff` in the sign column, to show weather any line has been modified.

### NERDTree
Filesystem explorer to browse files and directories in the side bar.

### Syntastic
Syntax checking using multiple external syntax checkers.

### neocomplete
Provides keyword completion.

### tagbar
Eeasy way to browse the tags of the current file and get an overview of its structure.
Requires [Exuberant ctags](http://ctags.sourceforge.net/) and if used with `go` [gotags](https://github.com/jstemmer/gotags).

### bufexplorer
Quickly and easily switch between buffers.

### auto pairs
Insert or delete brackets, parens, quotes in pair.

### vim-airline
Very nice status/tabline which works with git fugitive, syntastic, nerdtree etc.

### Ag
Frontend for A.K.A. [the_silver_searcher](https://github.com/ggreer/the_silver_searcher) which is a fast ack / search replacement. 

### vim-indent-guides
Visually displays indent levels.

### vim-zenroom2 + goyo.vim
Inspired by iA Writer for editing Markdown and reStructuredText in a distraction free environment.

### vim-gnupg
Transparent editing of GPG encrypted files editing in ".gpg", ".pgp" or ".asc".

### Language syntax, ident and compiling support
- Go
- Javascript
- Coffee-Script
- Json
- Markdown
- Puppet Configurations


## Color Themes

I use the `molokai` color scheme by default and `mayansmoke` in full screen zen mode. A few others I like can be activated by using the following commands within vim:

- colorscheme peaksea
- colorscheme wombat
- colorscheme ir_black
- colorscheme mayansmoke
- colorscheme molokai


## Configuration

The following configuration files hold everything together:

### .vim/keymap.vim
Custom keyboard mappings as mentioned above and some others.

### .vim/plugins_config.vim
Settings for any of the above mentioned used plugins.

### .vim/language_support.vim
Language specific settings - I should move those to ftplugin/ one day.

### .vim/helper_function.vim
Useful helper functions i found online used in various places.

### ftplugin/
Any language/file specific settings can be found in the ftplugin/ directory.

### Custom Settings
If you wish to set custom settings create the file `~/.vimrc.custom`.


## Credit

Most of the plugins I choosed to use I found via the great [vimrc](https://github.com/amix/vimrc) by @amix and the [gist](https://gist.github.com/cridenour/74e7635275331d5afa6b) by @cridenour.
