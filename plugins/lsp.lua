return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "basic",
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
              },
            },
          },
          on_init = function(client)
            local venv_path = os.getenv("VIRTUAL_ENV")
            if venv_path then
              local python_path = venv_path .. "/bin/python"
              client.config.settings.python = client.config.settings.python or {}
              client.config.settings.python.pythonPath = python_path
              client.notify("workspace/didChangeConfiguration", {
                settings = client.config.settings,
              })
            end
          end,
        },
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "python" },
    },
  },
}
