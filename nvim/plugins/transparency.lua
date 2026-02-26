return {
  -- Используем проверенный плагин для прозрачности
  "xiyaowong/transparent.nvim",
  lazy = false, -- Загружаем сразу
  config = function()
    require("transparent").setup({
      extra_groups = {
        "NormalFloat",
        "NvimTreeNormal",
        "NeoTreeNormal",
        "Pmenu",
        "FloatBorder",
        "TelescopeNormal",
        "TelescopeBorder",
      },
    })
  end,
}
