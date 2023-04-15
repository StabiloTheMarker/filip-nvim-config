

-- First we want to setup all language servers to start automatically
-- and to attach automatically when a certain filetype is opened

vim.api.nvim_create_autocmd({"BufWinEnter"}, 
{pattern="*", 
callback=function(ev)
  print(vim.opt.filetype._value)
  if vim.opt.filetype._value == "lua" then
    vim.lsp.start({
      cmd = {'lua-language-server'},
      root_dir = vim.fs.dirname(vim.fs.find({'lazy-lock.json'}, { upward = true })[1]),
    })
    print("started lua-language-server")
  end
end
})
