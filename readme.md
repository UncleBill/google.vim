###Intro

A vim plugin for google searching, providing suggestion completion

###Install

- Require: [mattn/webapi-vim](https://github.com/mattn/webapi-vim)
- `NeoBundle 'UncleBill/google.vim'`

###Setup

Set language:

```vim
let g:google_search_hl = 'language code'
```

Checkout [Web Interface Language Codes](https://sites.google.com/site/tomihasa/google-language-codes#interfacelanguage) for the codes


###Usage

```vim
:Google key<tab>     " query suggestions starts with 'key'
:Google<cr>          " search keyword under the curosr
```
