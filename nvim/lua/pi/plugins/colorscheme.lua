return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    --local transparent = true -- set to true if you would like to enable transparency
    -- Default options:
    require("kanagawa").setup({
      style = "dragon",
      compile = false, -- enable compiling the colorscheme
      undercurl = true, -- enable undercurls
      commentStyle = { italic = true },
      functionStyle = {},
      keywordStyle = { italic = true },
      statementStyle = { bold = true },
      typeStyle = {},
      transparent = false, -- do not set background color
      dimInactive = false, -- dim inactive window `:h hl-NormalNC`
      terminalColors = true, -- define vim.g.terminal_color_{0,17}

      theme = "dragon", -- Load "wave" theme when 'background' option is not set
      background = { -- map the value of 'background' option to a theme
        dark = "dragon", -- try "dragon" !
        light = "lotus",
      },
    })

    -- setup must be called before loading
    vim.cmd("colorscheme retrobox")
    -- local bg = "#011628"
    -- local bg_dark = "#011423"
    -- local bg_highlight = "#143652"
    -- local bg_search = "#0A64AC"
    -- local bg_visual = "#275378"
    -- local fg = "#CBE0F0"
    -- local fg_dark = "#B4D0E9"
    -- local fg_gutter = "#627E97"
    -- local border = "#547998"

    -- require("onedark").setup({
    --   style = "warmer",
    --   transparent = transparent,
    --   styles = {
    --     sidebars = transparent and "transparent" or "dark",
    --     floats = transparent and "transparent" or "dark",
    --   },
    --   -- on_colors = function(colors)
    --   --   colors.bg = bg
    --   --   colors.bg_dark = transparent and colors.none or bg_dark
    --   --   colors.bg_float = transparent and colors.none or bg_dark
    --   --   colors.bg_highlight = bg_highlight
    --   --   colors.bg_popup = bg_dark
    --   --   colors.bg_search = bg_search
    --   --   colors.bg_sidebar = transparent and colors.none or bg_dark
    --   --   colors.bg_statusline = transparent and colors.none or bg_dark
    --   --   colors.bg_visual = bg_visual
    --   --   colors.border = border
    --   --   colors.fg = fg
    --   --   colors.fg_dark = fg_dark
    --   --   colors.fg_float = fg
    --   --   colors.fg_gutter = fg_gutter
    --   --   colors.fg_sidebar = fg_dark
    --   -- end,
    -- })
  end,
}
