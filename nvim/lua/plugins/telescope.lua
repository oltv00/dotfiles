return {
    {
        'nvim-telescope/telescope.nvim', version = 'v0.2.1',
         dependencies = {
            'nvim-lua/plenary.nvim',
            -- optional but recommended
             { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        }
    }
}

