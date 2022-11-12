local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	options = {
		numbers = "none", -- | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
		close_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		right_mouse_command = "Bdelete! %d", -- can be a string | function, see "Mouse actions"
		left_mouse_command = "buffer %d", -- can be a string | function, see "Mouse actions"
		middle_mouse_command = nil, -- can be a string | function, see "Mouse actions"
		indicator = {
			style = "none",
		},
		buffer_close_icon = "",
		modified_icon = "●",
		close_icon = "",
		left_trunc_marker = "",
		right_trunc_marker = "",
		max_name_length = 30,
		max_prefix_length = 30, -- prefix used when a buffer is de-duplicated
		tab_size = 21,
		diagnostics = false, -- | "nvim_lsp" | "coc",
		diagnostics_update_in_insert = false,
		offsets = {
			{
				filetype = "NvimTree",
				text = "  File Explorer",
				padding = 0,
				separator = true,
			},
		},
		show_buffer_icons = true,
		show_buffer_close_icons = true,
		show_close_icon = false,
		show_tab_indicators = true,
		persist_buffer_sort = true, -- whether or not custom sorted buffers should persist
		separator_style = "thin", -- | "thick" | "thin" | { 'any', 'any' },
		enforce_regular_tabs = true,
		always_show_bufferline = true,
	},
	highlights = {
		buffer_selected = {
			bg = "#24283b",
		},
		close_button_selected = {
			bg = "#24283b",
		},
		close_button = {
			bg = {
				attribute = "bg",
				highlight = "Normal",
			},
		},
		background = {
			bg = {
				attribute = "bg",
				highlight = "Normal",
			},
		},
		fill = {
			bg = {
				attribute = "bg",
				highlight = "Normal",
			},
		},
		separator = {
			bg = {
				attribute = "bg",
				highlight = "Normal",
			},
			fg = {
				attribute = "bg",
				highlight = "Normal",
			},
		},
		separator_selected = {
			bg = {
				attribute = "bg",
				highlight = "Normal",
			},
			fg = {
				attribute = "bg",
				highlight = "Normal",
			},
		},
		offset_separator = {
			bg = {
				attribute = "bg",
				highlight = "Normal",
			},
		},
	},
})
