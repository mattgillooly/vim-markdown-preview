" markdown-preview.vim - Preview Markdown documents from vim
" Maintainer: Matt Gillooly <http://mattgillooly.com/>
" Version: 0.0.1

command PreviewMarkdown :call PreviewMarkdown()

function! PreviewMarkdown()
  write
  let tmpfile = '/tmp/markdown-preview.html'

  let write_cmd = 'perl ~/bin/Markdown.pl --html4tags % > ' . tmpfile
  let open_cmd = 'open ' . tmpfile

  let cmd = '!(' . write_cmd . '; ' . open_cmd . ')'

  exec cmd

  if shell_error == 0
    redraw!
  endif
endfunction
