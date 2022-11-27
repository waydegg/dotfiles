local ok, lspsaga = pcall(require, "lspsaga")
if not ok then
	print("'lspsaga' not installed")
	return
end

lspsaga.init_lsp_saga({
	code_action_lightbulb = {
		enable = false,
	},
	show_outline = {
		jump_key = "l",
		auto_refresh = true,
	},
})
