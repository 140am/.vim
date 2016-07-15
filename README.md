# VIM @ 1:40am

## What is this?

I use the [vim](http://www.vim.org/) text editor for software development. This is my ready to use configuration including all the [bells and whistles](https://github.com/140am/.vim/wiki/Plugins) I look forward to in my day to day use. Tweaking it slooowly over time.

## How does it look?

![Screenshot 1](http://get.140.am/i/c836e6c0-7aba-4436-8c5e-60a228292d38.png)

Using "Zen" mode [ctrl-z] when reading and editing Markdown files:

![Screenshot 2](http://get.140.am/i/711dd457-7add-4995-a929-6c8478826ba5.png)

## Requirements

**Vim 7.4+** with `Lua` support (required by the neocomplete plugin).

To install the latest `vim` on OSX [follow these instructions](https://github.com/140am/.vim/wiki/Installing-VIM).

## Installation

Clone the repository to your machine:

> git clone git://github.com/140am/.vim.git ~/.vim  
> cd .vim  
> git submodule init  
> git submodule update  
> ln -s ~/.vim/vimrc ~/.vimrc

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
