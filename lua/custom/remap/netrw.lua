require ("utility")
-- Add a shortcut to open netrw buffer
vim.keymap.set('n', '<c-o>', "<cmd>Explore<cr>", { silent = true })
vim.keymap.set('n', '<c-s-o>', function ()
    local buffer_name = vim.api.nvim_buf_get_name(0)
    local expanded_dir = op_ternary(
        string.find(buffer_name, "^term:"), -- Check if buffer is a terminal
        string.sub(string.match(buffer_name, '^term:%/(%g%g-)%d+:'), 2, -2), -- retrieve base dir from terminal name
        vim.fn.getcwd() -- Get current directory
    )
    vim.api.nvim_exec2(":Explore " .. expanded_dir, {})
end, { silent = true })

