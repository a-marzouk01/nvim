
function ColorMyPencils(color) 
	color = color or "catppuccin-macchiato"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()
