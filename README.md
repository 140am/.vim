# My VIM text editor setup

## What is this?

I appreciate a good IDE (hi JetBrains and Sublime Text) but love the speed and flexibility of [vim](http://www.vim.org/) and [MacVim](https://github.com/macvim-dev/macvim). After years of Sublime Text 2/3 use I moved back to `vim` but did not want to loose anything I got used to. My primary motivation being the lack of a good `go` plugin and my lag of mouse use. This is my daily used stable configuration of plugins and settings using MacVim on OS X.


## How does it look?

![Screenshot 1](http://get.140.am/i/iIaAUTiMJM_TxcFqKf-lQWS56rtgGI0qxkgE6IVpEDk.png)

## Requirements

**Vim 7.4+** with `Lua` support (required by the neocomplete plugin).

To install the latest `vim` on OSX [follow these instructions](https://github.com/140am/.vim/wiki/Installing-VIM).

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

## Configuration

> All settings are documented within the [vimrc](vimrc) configuration file.

## Documentation
- [Keyboard Shortcuts](https://github.com/140am/.vim/wiki/Keyboard-Shortcuts)
- [Included VIM Plugins](https://github.com/140am/.vim/wiki/Plugins)
- [Included Color Themes](https://github.com/140am/.vim/wiki/Color-Themes)
- [Customization & Configuration](https://github.com/140am/.vim/wiki/Customization)

## Credit

Most of the plugins I use I found via the great [vimrc](https://github.com/amix/vimrc) by @amix and the [gist](https://gist.github.com/cridenour/74e7635275331d5afa6b) by @cridenour.
