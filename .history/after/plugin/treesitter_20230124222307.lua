require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c", "cpp", "fish", "go", "gomod", "rust", "bash"
        , "lua", "vue","javascript", "tsx", "typescript","html","scss"
    }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    highlight = {
        enable = true, -- false will disable the whole extension
    },
    autotag = {
        enable = true,
    },
}
