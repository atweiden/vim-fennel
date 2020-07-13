vim-fennel
==========

[Fennel][Fennel] syntax highlighting for Vim.

Screenshot
----------

![](https://i.imgur.com/iIIeVdL.png)

Features
--------

### Syntax highlighting for third party libraries

- [Olical/conjure][Olical/conjure]
- [rxi/lume][rxi/lume]

### Syntax highlighting for doc comments

Inspired by Vimscript:

![](https://i.imgur.com/GIg1swb.png)

```fennel
;; Neovim syntax file "for great good"
;; Language: Fennel
;; Maintainer: Andy Weidenbaum <atweiden@tutanota.de>
;; Last Change: 2020-07-14T08:19:28+10:00
;; Version: 0.0.1
;; URL: https://fennel-lang.org/
```

Doc comments are comments with leading double semicolon.

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

" dein.vim
call dein#add('atweiden/vim-fennel')

" minpac
call minpac#add('atweiden/vim-fennel')
```

License
-------

[Vim][LICENSE]


[LICENSE]: LICENSE
[Fennel]: https://fennel-lang.org/
[Olical/conjure]: https://github.com/Olical/conjure
[rxi/lume]: https://github.com/rxi/lume
