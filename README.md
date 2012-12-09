# vim-markdown-preview

Quickly preview Markdown documents from vim.

## Install with pathogen

```
git submodule add git@github.com:mattgillooly/vim-markdown-preview.git bundle/vim-markdown-preview
git submodule init
```

## Create key-mapping (optional)

```
nnoremap <leader>m :PreviewMarkdown<cr>
```

## Requirements:

Download Markdown.pl from [http://daringfireball.net/projects/markdown/](http://daringfireball.net/projects/markdown/) and put it in your ~/bin/ directory (or elsewhere, and update the Vimscript to aim correctly at it.)

## Caveats:
No syntax highlighting or other [Github-specific niceties](http://github.github.com/github-flavored-markdown/).
