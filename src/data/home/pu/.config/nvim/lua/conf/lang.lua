local conf = {}

function conf.treesitter()
    require("nvim-treesitter.configs").setup({
        highlight = {
            enable = true,
            disable = {},
        },
        ensure_installed = {
            "c", "cpp", "python",
            "bash", "lua", "vim", "regex",
            "javascript", "css", "html",
            "json5", "yaml", "toml", "json",
            -- "cmake", "commonlisp", "dockerfile", "go", "latex", "ocaml", "rust", "scss", "typescript"
        },
    })
end

return conf
