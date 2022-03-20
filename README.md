## Useful plugins

- vim-plug      : plugin manager
- lightline     : status bar
- gruvbox       : color scheme

## Useful Commands

Create folder recursively to the current file path on the buffer
:mkdir <directory> -p %:h

## Good to know

### File path modifiers

"%" sign in terminal mode will be expanded to a full path of the current file.\n
There are modifiers to help us to work with the file path.\n
Read more [filename-modifiers](http://vimdoc.sourceforge.net/htmldoc/cmdline.html#filename-modifiers).
Or type `:h filename-modifiers` from wihin the Neovim.

### Working with git

#### nvimdiff

To open git difftool with nvim, open terminal and type:
```
git diftool --tool=nvimdiff
```
