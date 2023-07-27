-- Add a shortcut to open netrw buffer
vim.keymap.set('n', '<c-o>', "<cmd>Explore<cr>", { silent = true })
-- [[ NOT WORKING
vim.keymap.set('n', '<c-s-o>', function ()
    local buffer_name = vim.api.nvim_buf_get_name(0)
    local is_terminal = string.find(buffer_name, "^term:")
    if is_terminal then
        local terminal_directory = string.match(buffer_name, '^term:%/(%g%g-)%d+:')
        local expanded_dir = vim.fn.expand(string.sub(terminal_directory, 2, -2))
        -- vim.fn.chdir(expanded_dir)
        vim.api.nvim_exec2(":Ntree " .. expanded_dir, {})
    else
        vim.api.nvim_exec2(":Ntree", {})
    end
end, { silent = true })
-- ]]
