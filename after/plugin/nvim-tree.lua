local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")

    local function change_dir()
        local node = api.tree.get_node_under_cursor()
        local path = ""
        if node.type == "directory" then
            path = node.absolute_path
        else
            path = vim.fs.dirname(node.absolute_path)
        end
        vim.cmd("cd " .. path)
    end

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
    end

    -- Load default mappings
    api.config.mappings.default_on_attach(bufnr)

    -- Custom mapping
    vim.keymap.set("n", "<leader>cd", api.tree.change_root_to_node, opts("CD"))
end

require("nvim-tree").setup({
    sync_root_with_cwd = true,
    on_attach = my_on_attach,

    tab = {
        sync = {
            open = true,
            close = true,
        },
    },
})
