return {
	"navarasu/onedark.nvim",
	config = function()
		require('onedark').setup ({
			transperent = true
        })
		require('onedark').load()
	end
}

