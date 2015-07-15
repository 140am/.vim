# vim @ 140am

## What is this?

I appreciate a good IDE but love the speed and flexibility of [vim](http://www.vim.org/) especially [MacVim](https://github.com/macvim-dev/macvim). This is my daily used configuration of plugins and vim settings using MacVim in OS X. Use at your own risk!

My primarily used languages are:

- go
- python
- javascript / coffeescript


## How does it look?

![Screenshot 1](http://get.140.am/i/iIaAUTiMJM_TxcFqKf-lQWS56rtgGI0qxkgE6IVpEDk.png)


## Requirements

Vim 7.4+ with lua support (required by the neocomplete plugin).

To install on OSX using [homebrew](http://brew.sh/) run:

> brew install vim --with-lua --override-system-vim

To install the MacVim GUI run:

> brew install macvim --with-lua --with-cscope

### Optional

If you plan on using `go` install:

> brew install gotags

To make use of the `ag` search plugin install:

> brew install the_silver_searcher

## Installation

Clone the repository to your machine:

> git clone git://github.com/140am/vimrc.git ~/.vim  
> git submodule update  
> cat ~/.vim/vimrc > ~/.vimrc

Start `vim` or `mvim` (MacVim).


## Example Keyboard Shortcuts

- ctrl-n : file explorer
- ctrl-t : tag bar
- ctrl-b : buffer explorer
- ctrl-z : fullscreen zen mode


## Used Plugins

### pathogen
Manages the vim runtime path. To install any new vim plugin simply place them into the `.vim/bundle` directory.

### fugitive
Great `git` wrapper giving you everything to use git from within vim.

### gitgutter
Showing `git diff` in the sign column, to show weather each line has been added, modified or removed.

### NERDTree
Filesystem explorer to browse files and directories in the side bar.

### Syntastic
Syntax detection and works great with TagBar together.

### neocomplete
Provides keyword completion and works great with vim-go.

### tagbar
Eeasy way to browse the tags of the current file and get an overview of its structure. Requires [Exuberant ctags](http://ctags.sourceforge.net/) and if used with `go` [gotags](https://github.com/jstemmer/gotags).

### bufexplorer
Quickly and easily switch between buffers.

### auto pairs
Insert or delete brackets, parens, quotes in pair.

### vim-airline
Very nice status/tabline which works with git fugitive, syntastic, nerdtree etc.

### Ag
Frontend for A.K.A. [the_silver_searcher](https://github.com/ggreer/the_silver_searcher) which is a fast ack / search replacement. 

### vim-zenroom2 + goyo.vim
Inspired by iA Writer for editing Markdown and reStructuredText in a distraction free environment.

### vim-go
Go comes with basic vim plugins. The `vim-go` plugin provides additional improved syntax highlighting, auto completion, gofmt on save, go to declrations and much more.


## Color Themes

I use the `molokai` color scheme by default and `mayansmoke` in full screen zen mode. A few others I like can be activated by using the following commands within vim:

- colorscheme peaksea
- colorscheme wombat
- colorscheme ir_black
- colorscheme mayansmoke
- colorscheme molokai


## Configuration

I use the following configuration files to hold everything together:

### .vim/keymap.vim
Custom keyboard mappings as mentioned above and some others.

### .vim/plugins_config.vim
Settings for any of the above mentioned used plugins.

### .vim/language_support.vim
Language specific settings - I should move those to ftplugin/ one day.

### .vim/helper_function.vim
Useful helper functions i found online used in various places.

If you wish to set custom settings create the file `~/.vimrc.custom`.


## Credit

Most of the plugins I choosed to use I found via the great [vimrc](https://github.com/amix/vimrc) by @amix and the [gist](https://gist.github.com/cridenour/74e7635275331d5afa6b) by @cridenour. Thank you!

