return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      -- Настройка
      require("venv-selector").setup({
        name = { ".venv", "venv", "env" },
        notify = true,
        -- Автоматически выбирать venv при открытии Neovim в папке с окружением
        auto_refresh = true,
      })

      -- Горячая клавиша для ручного выбора
      vim.keymap.set("n", "<leader>cv", function()
        vim.cmd.VenvSelect()
      end, { desc = "Select Virtual Environment" })
    end,
  },
}
