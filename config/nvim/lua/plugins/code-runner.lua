-- Archivo: ~/.config/nvim/lua/plugins/code-runner.lua
return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        -- Configuración personalizada aquí
        filetype = {
          python = "python3 -u", -- Comando para ejecutar archivos Python
          javascript = "node", -- Comando para ejecutar archivos JavaScript
          lua = "lua", -- Comando para ejecutar archivos Lua
          -- Añade más configuraciones según necesites
        },
        mode = "term", -- Usar una terminal integrada para la salida
        focus = true, -- Enfocar la terminal después de ejecutar
        startinsert = false, -- No entrar en modo insert automáticamente
      })
    end,
  },
}
