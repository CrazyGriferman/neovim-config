require'nvim-treesitter.configs'.setup {
    ensure_installed = {
        "c", "cpp", "fish", "go", "gomod", "rust", "bash"
        , "lua", "vue","javascript", "tsx", "typescript","html","scss"
    }, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ignore_install = {
        "beancount", "bibtex", "c_sharp", "clojure", "comment",
        "commonlisp", "cuda", "dart", "devicetree", "elixir", "erlang",
        "fennel", "Godot", "glimmer", "graphql", "java", "jsdoc", "julia",
        "kotlin", "ledger", "nix", "ocaml", "ocaml_interface", "php", "ql",
        "query", "r", "rst", "ruby",  "sparql", "supercollider",
        "svelte", "teal", "turtle", "verilog", "zig"
    }, -- List of parsers to ignore installing
    highlight = {
        enable = true, -- false will disable the whole extension
        disable = {} -- list of language that will be disabled
    },
}
