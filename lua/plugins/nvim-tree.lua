vim.cmd('let g:nvim_tree_quit_on_open = 1')

function NvimTreeXdgOpen()
    local lib = require 'nvim-tree.lib'
    local node = lib.get_node_at_cursor()
    if node then
        vim.fn.jobstart("xdg-open '" .. node.absolute_path .. "' &",
                        {detach = true})
    end
end

vim.g.nvim_tree_width = 50
vim.g.nvim_tree_update_cwd=1
local tree_cb = require'nvim-tree.config'.nvim_tree_callback
vim.g.nvim_tree_bindings = {
    {key = {"o"}, cb = tree_cb(":lua NvimTreeXdgOpen()<CR>") },
    {key = {"<CR>"}, cb = tree_cb("edit")},
    {key = {"<2-LeftMouse>"}, cb = tree_cb("edit")},
    {key = {"<2-RightMouse>"}, cb = tree_cb("cd")},
    {key = {"<C-]>"}, cb = tree_cb("cd")},
    {key = {"v"}, cb = tree_cb("vsplit")},
    {key = {"h"}, cb = tree_cb("split")},
    {key = {"<C-t>"}, cb = tree_cb("tabnew")},
    {key = {"<"}, cb = tree_cb("prev_sibling")},
    {key = {">"}, cb = tree_cb("next_sibling")},
    {key = {"<BS>"}, cb = tree_cb("close_node")},
    {key = {"<S-CR>"}, cb = tree_cb("close_node")},
    {key = {"<Tab>"}, cb = tree_cb("preview")},
    {key = {"I"}, cb = tree_cb("toggle_ignored")},
    {key = {"H"}, cb = tree_cb("toggle_dotfiles")},
    {key = {"R"}, cb = tree_cb("refresh")},
    {key = {"a"}, cb = tree_cb("create")},
    {key = {"d"}, cb = tree_cb("remove")},
    {key = {"r"}, cb = tree_cb("full_rename")},
    {key = {"<C-r>"}, cb = tree_cb("rename")},
    {key = {"x"}, cb = tree_cb("cut")},
    {key = {"c"}, cb = tree_cb("copy")},
    {key = {"p"}, cb = tree_cb("paste")},
    {key = {"[c"}, cb = tree_cb("prev_git_item")},
    {key = {"]c"}, cb = tree_cb("next_git_item")},
    {key = {"-"}, cb = tree_cb("dir_up")},
    {key = {"q"}, cb = tree_cb("close")},
}
