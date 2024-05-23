# Dockerized solidity-language-server

> [Original repo](https://github.com/NomicFoundation/hardhat-vscode/tree/development/server)

Can be used with `nvim` lsp using the following config:

```lua
local root_dir = vim.fn.getcwd()

require('lspconfig').solidity.setup({
  before_init = function(params)
    params.processId = vim.NIL
  end,
  cmd = {
    'docker', 'run', '-i', '--rm',
    '-v', root_dir .. ':' .. root_dir,
    'tikhoplav/solidity-language-server:0.8.3',
  },
})
```

Comes with pre-installed `forge` binary, so can be used in `foundry/forge` projects.

