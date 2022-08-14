vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use "wbthomason/packer.nvim"
    use "folke/tokyonight.nvim"
    use "neovim/nvim-lspconfig"
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-nvim-lsp"
    use "saadparwaiz1/cmp_luasnip"
    use "L3MON4D3/LuaSnip"
    use "nvim-treesitter/nvim-treesitter"
    use "nvim-lua/plenary.nvim"
    use "nvim-telescope/telescope.nvim"
    use "nvim-telescope/telescope-ui-select.nvim"
    use "kyazdani42/nvim-web-devicons"
    use "romgrk/barbar.nvim"
    use "ray-x/lsp_signature.nvim"
    use "nvim-lualine/lualine.nvim"
    use "sindrets/diffview.nvim"
    use "lewis6991/gitsigns.nvim"
    use "terrortylor/nvim-comment"
    use "kdheepak/lazygit.nvim"
    use "Hoffs/omnisharp-extended-lsp.nvim"
end)
