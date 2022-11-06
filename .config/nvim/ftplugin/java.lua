-- This at least gives syntax highlight

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = "/Users/luke/.local/share/eclipse/" .. project_name
local config = {
    cmd = {
      '/bin/bash', '/Users/luke/bin/scripts/java-lsp.sh',
      workspace_dir
    },
    root_dir = vim.fs.dirname(vim.fs.find(
      {'.gradlew', 'gradle.build', '.git', 'mvnw', 'ivy.xml', 'pom.xml'},
      { upward = true }
    )[1]),
}
require('jdtls').start_or_attach(config)
