-- Archivo: ~/.config/nvim/lua/plugins/code-runner.lua
return {
  {
    "CRAG666/code_runner.nvim",
    config = function()
      require("code_runner").setup({
        filetype = {
          python = "python3 -u", -- Comando para ejecutar archivos Python
          javascript = "node", -- Comando para ejecutar archivos JavaScript
          lua = "lua", -- Comando para ejecutar archivos Lua
          bash = "bash", -- Comando para ejecutar archivos Bash
          rust = {
            "cd $dir &&", -- Cambia al directorio del archivo
            "rustc $fileName &&", -- Compila el archivo Rust
            "$dir/$fileNameWithoutExt", -- Ejecuta el archivo compilado
          },
          c = function(...)
            local c_base = {
              "cd $dir &&", -- Cambia al directorio del archivo
              "gcc $fileName -o", -- Compila el archivo C
              "/tmp/$fileNameWithoutExt", -- Ubicación temporal para el ejecutable
            }
            local c_exec = {
              "&& /tmp/$fileNameWithoutExt &&", -- Ejecuta el archivo compilado
              "rm /tmp/$fileNameWithoutExt", -- Elimina el archivo temporal después de la ejecución
            }
            vim.ui.input({ prompt = "Add more args:" }, function(input)
              c_base[4] = input
              require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
            end)
          end,
          java = {
            "cd $dir &&", -- Cambia al directorio del archivo
            "javac $fileName &&", -- Compila el archivo Java
            "java $fileNameWithoutExt", -- Ejecuta el archivo compilado (sin extensión)
          },
        },
        mode = "term", -- Usar una terminal integrada para la salida
        focus = true, -- Enfocar la terminal después de ejecutar
        startinsert = false, -- No entrar en modo insert automáticamente
      })
    end,
  },
}
