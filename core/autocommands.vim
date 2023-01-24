"2023.1.21 render tex to pdf and open the output pdf file. silent for not showing output message. -a for chossing render tool and -g for focusing the terminal while opening the pdf
autocmd FileType tex nmap <buffer> <c-t> :silent !latexmk -pdfxe % && open -g -a Skim %:r.pdf<CR><CR>
