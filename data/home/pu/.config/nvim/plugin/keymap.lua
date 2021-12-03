vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap

-- map("n", "j", "<Plug>(accelerated_jk_gj)", {})
-- map("n", "k", "<Plug>(accelerated_jk_gk)", {})

local function nnoremap(key, cmd)
    map("n", key, "<CMD>"..cmd.."<CR>", {noremap = true, silent = true})
end

-- # packer
nnoremap("<Leader>pc", "PackerCompile")
nnoremap("<Leader>ps", "PackerSync")
nnoremap("<Leader>pi", "PackerInstall")
nnoremap("<Leader>pu", "PackerUpdate")
-- # fzf
nnoremap("<Leader>f<Space>", "FzfLua")
nnoremap("<Leader>fm", "RnvimrToggle")
nnoremap("<Leader>fb", "FzfLua marks")

nnoremap("<Leader>fl", "FzfLua blines")
nnoremap("<Leader>fL", "FzfLua lines")

nnoremap("<Leader>fd", "FzfLua help_tags")
nnoremap("<Leader>fD", "FzfLua man_pages")

nnoremap("<Leader>fw", "FzfLua grep_cword")
nnoremap("<Leader>fW", "FzfLua grep_cWORD")
nnoremap("<Leader>fg", "FzfLua grep_curbuf")
nnoremap("<Leader>fG", "FzfLua live_grep")

nnoremap("<Leader>ff", "FzfLua files")
nnoremap("<Leader>fF", "FzfLua oldfiles")
-- # focus
nnoremap("<Leader>ww", "FocusSplitCycle")
nnoremap("<Leader>ws", "FocusSplitNicely")
nnoremap("<Leader>wh", "FocusSplitLeft")
nnoremap("<Leader>wj", "FocusSplitDown")
nnoremap("<Leader>wk", "FocusSplitUp")
nnoremap("<Leader>wl", "FocusSplitRight")

nnoremap("<Leader>wt", "FocusEqualise")
nnoremap("<Leader>wm", "FocusMaximise")
nnoremap("<Leader>w<Space>", "FocusMaxOrEqual")
nnoremap("<Up>", "res +5")
nnoremap("<Down>", "res -5")
nnoremap("<Left>", "vertical resize-5")
nnoremap("<Right>", "vertical resize+5")
nnoremap("Q", "quit")
-- # LSP
nnoremap("<leader>la", "Lspsaga code_action")
map("v", "<leader>la", ":<C-U>Lspsaga range_code_action<CR>", {noremap = true, silent = true})
nnoremap("<leader>lm", "Lspsaga hover_doc")
-- 滚动
nnoremap("<C-j>", "cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)")
nnoremap("<C-k>", "cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)")
-- 预览签名
nnoremap("<leader>ls", "Lspsaga signature_help")
-- 转到声明
nnoremap("<Leader>lS", "lua vim.lsp.buf.declaration()")
nnoremap("<leader>lr", "Lspsaga rename")
-- 预览定义
nnoremap("<leader>ld", "Lspsaga preview_definition")
-- 转到定义
nnoremap("<Leader>lD", "lua vim.lsp.buf.definition()")
nnoremap("<leader>le", "Lspsaga show_cursor_diagnostics")
nnoremap("<leader>lE", "Lspsaga show_line_diagnostics")
nnoremap("[e", "Lspsaga diagnostic_jump_next")
nnoremap("]e", "Lspsaga diagnostic_jump_prev")
nnoremap("<leader>lf", "Neoformat")
nnoremap("<leader>lF", "FzfLua builtin")

nnoremap("<Leader>jw", "lua require'hop'.hint_words()")
nnoremap("<Leader>js", "lua require'hop'.hint_patterns()")
nnoremap("<Leader>jc", "lua require'hop'.hint_char1()")
nnoremap("<Leader>jd", "lua require'hop'.hint_char2()")
nnoremap("<Leader>jl", "lua require'hop'.hint_lines()")

map("o", "m", ":<C-U>lua require('tsht').nodes()<CR>", {noremap = true, silent = true})
map("v", "m", ":lua require('tsht').nodes()<CR>", {noremap = true, silent = true})
