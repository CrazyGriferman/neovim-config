autocmd FileType tex nmap <buffer> <c-t> :!latexmk -pdfxe % && open -g -a Skim %:r.pdf<CR><CR>
