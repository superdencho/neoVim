-- vim.cmd([[
--     augroup _exe_code
--         autocmd!
--         autocmd FileType python nnoremap <buffer> <localleader>r
--                     \ :sp<CR> :term python3 %<CR> :startinsert<CR>
--     augroup END
-- ]])

vim.cmd([[
    map <localleader>r :call Run() <cr>
    function Run()
        exec "! node %"
    endfunction
]])

-- Fixes Autocomment
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
	callback = function()
		vim.cmd("set formatoptions-=cro")
	end,
})

-- Set wrap and spell in markdown and gitcommit
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "gitcommit", "markdown" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = true
	end,
})

-- Remove statusline and tabline when in alpha
-- vim.api.nvim_create_autocmd({ "User" }, {
--     pattern = { "AlphaReady" },
--     callback = function()
--         vim.cmd [[
--             set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
--             set laststatus=0 | autocmd BufUnload <buffer> set laststatus=3
--         ]]
--     end,
-- })
vim.cmd([[augroup JsonToJsonc
    autocmd! FileType json set filetype=jsonc
augroup END]])
