return {
  "akinsho/bufferline.nvim",
  config=function () 
    local status_ok, bufferline = pcall(require, "bufferline")
    if not status_ok then
      return
    end

    bufferline.setup({
      options = {
        animation = true,

        -- Enable/disable auto-hiding the tab bar when there is a single buffer
        auto_hide = true,

        closable = true,
        modified_icon = '  ● ',
        tab_size = 24,
        clickable = true,
        exclude_ft = {},
        exclude_name = {},

        -- Enable/disable icons    -- if set to 'numbers', will show buffer index in the tabline
        -- if set to 'both', will show buffer index and icons in the tabline
        icons = false,

        -- If set, the icon color will follow its corresponding buffer
        -- highlight group. By default, the Buffer*Icon group is linked to the
        -- Buffer* group (see Highlighting below). Otherwise, it will take its
        -- default value as defined by devicons.
        icon_custom_colors = false,


        -- If true, new buffers will be inserted at the start/end of the list.
        -- Default is to insert after current buffer.
        insert_at_end = false,
        insert_at_start = false,

        -- Sets the maximum padding width with which to surround each tab
        maximum_padding = 5,

        -- Sets the maximum buffer name length.
        maximum_length = 30,

        -- If set, the letters for each buffer in buffer-pick mode will be
        -- assigned based on their name. Otherwise or in case all letters are
        -- already assigned, the behavior is to assign letters in order of
        -- usability (see order below)
        semantic_letters = true,

        -- New buffer letters are assigned in this order. This order is
        -- optimal for the qwerty keyboard layout but might need adjustement
        -- for other layouts.
        letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',

        -- Sets the name of unnamed buffers. By default format is "[Buffer X]"
        -- where X is the buffer number. But only a static string is accepted here.
        no_name_title = nil,
      },

      highlights = {
        fill = {
          fg = '#1f1f1f',
          bg = '#575757',
        },
        buffer_selected = {
          fg = '#1f1f1f',
          bg = '#f06056',
          italic = false,
          bold = false,
          icon = false,
        },
        modified = {
          fg = '#1f1f1f',
          bg = '#f06056',
        },
        modified_selected = {
          fg = '#1f1f1f',
          bg = '#f06056',
        },

        modified_visible = {
          fg = '#1f1f1f',
          bg = '#f06056',
        },
        close_button_selected = {
          fg = '#1f1f1f',
          bg = '#f06056',
        },
      }

    })
  end
}
