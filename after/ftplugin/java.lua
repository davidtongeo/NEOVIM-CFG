local path = vim.fn.stdpath("data") .. "/mason/packages/jdtls"
local base = require("plugins.lsp.base")
--local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local config = {
  cmd = { path .. "/bin/jdtls" },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
  capabilities = base.capabilities,
  on_attach = base.on_attach,
  settings = {
    java = {
      signatureHelp = {
        enabled = true,
      },
      inlayHints = {
        parameterNames = {
          enabled = 'all',
        },
      },
      configuration = {
        -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
        -- And search for `interface RuntimeOption`
        -- The `name` is NOT arbitrary, but must match one of the elements from `enum ExecutionEnvironment` in the link above
        runtimes = {
          {
            name = "JavaSE-21",
            path = "/usr/lib/jvm/java-21-openjdk/",
          },
        }
      }
    }
  }
}
require('jdtls').start_or_attach(config)
