return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      transparent = true, -- Включает прозрачность для основного окна
      styles = {
        sidebars = "transparent", -- Прозрачность боковых панелей (Neo-tree)
        floats = "transparent", -- Прозрачность всплывающих окон
      },
    },
  },
}
