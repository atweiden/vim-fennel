vim-fennel
==========

[Fennel][Fennel] syntax highlighting for Vim.

Screenshot
----------

![](https://i.imgur.com/iIIeVdL.png)

Config
------

```vim
" highlight Olical/conjure keywords
let g:fennel_highlight_conjure = 1

" highlight rxi/lume keywords
let g:fennel_highlight_lume = 1
```

Installation
------------

```bash
# vim 8 package
git clone https://github.com/atweiden/vim-fennel \
  "$HOME/.vim/pack/plugins/start/vim-fennel"

# pathogen
git clone https://github.com/atweiden/vim-fennel \
  "$HOME/.vim/bundle/vim-fennel"
```

```vim
" plug
Plug 'atweiden/vim-fennel'

" vundle
Plugin 'atweiden/vim-fennel'
```

License
-------

[Vim][LICENSE]


[LICENSE]: LICENSE
[Fennel]: https://fennel-lang.org/
