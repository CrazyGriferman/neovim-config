local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

-- Register a handler that will be called for all installed servers.
-- Alternatively, you may also register handlers on specific server instances instead (see example below).
lsp_installer.on_server_ready(function(server)
	local opts = {
		on_attach = require("config.lsp.handlers").on_attach,
		capabilities = require("config.lsp.handlers").capabilities,
	}

    if server.name == "pylsp" then
        local pylsp_opts = require("config.lsp.settings.pylsp")
        opts = vim.tbl_deep_extend("force", pylsp_opts, opts)
    end

    if server.name == "vimls" then
        local vimls_opts = require("config.lsp.settings.vimls")
        opts = vim.tbl_deep_extend("force", vimls_opts, opts)
    end

    if server.name == "tsserver" then
        local tsserver_opts = require("config.lsp.settings.tsserver")
        opts = vim.tbl_deep_extend("force", tsserver_opts, opts)
    end

    if server.name == "sumneko_lua" then
        local sumneko_lua_opts = require("config.lsp.settings.sumneko_lua")
        opts = vim.tbl_deep_extend("force", sumneko_lua_opts, opts)
    end

    if server.name == "clangd" then
        local clangd_opts = require("config.lsp.settings.clangd")
        opts = vim.tbl_deep_extend("force", clangd_opts, opts)
    end

    if server.name == "html" then
        local html_opts = require("config.lsp.settings.html")
        opts = vim.tbl_deep_extend("force", html_opts, opts)
    end

	-- This setup() function is exactly the same as lspconfig's setup function.
	-- Refer to https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
	server:setup(opts)
end)
