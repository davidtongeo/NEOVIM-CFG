local fixPath = require("customfn").fixPath
local jdtls = require("jdtls")
local root_dir = require("jdtls.setup").find_root({ "gradlew", ".git", "mvnw" })

-- Base paths
local data_path = vim.fn.stdpath("data")
local jdtls_path = fixPath(data_path .. "/mason/packages/jdtls")
local dap_path = vim.fn.glob(data_path .. "/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-*.jar")

-- Workspace folder (per project)
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = fixPath(data_path .. "/site/java/workspace-root/" .. project_name)

-- Locate launcher JAR dynamically
local launcher_jar = vim.fn.glob(jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")

-- Pick configuration based on OS
local system = (vim.fn.has("win32") == 1 and "win")
    or (vim.fn.has("macunix") == 1 and "mac")
    or "linux"

local config = {
    cmd = {
        "java",
        "-Declipse.application=org.eclipse.jdt.ls.core.id1",
        "-Dosgi.bundles.defaultStartLevel=4",
        "-Declipse.product=org.eclipse.jdt.ls.core.product",
        "-Dlog.protocol=true",
        "-Dlog.level=ALL",
        "-Xmx4g",
        "--add-modules=ALL-SYSTEM",
        "--add-opens", "java.base/java.util=ALL-UNNAMED",
        "--add-opens", "java.base/java.lang=ALL-UNNAMED",

        "-jar", launcher_jar,
        "-configuration", jdtls_path .. "/config_" .. system,

        "-data", workspace_dir,
    },

    root_dir = root_dir,

    settings = {
        java = {
            signatureHelp = { enabled = true },
            contentProvider = { preferred = "fernflower" },
            completion = {
                favoriteStaticMembers = {
                    "org.hamcrest.MatcherAssert.assertThat",
                    "org.hamcrest.Matchers.*",
                    "org.hamcrest.CoreMatchers.*",
                    "org.junit.jupiter.api.Assertions.*",
                    "java.util.Objects.requireNonNull",
                    "java.util.Objects.requireNonNullElse",
                    "org.mockito.Mockito.*",
                },
                filteredTypes = {
                    "com.sun.*",
                    "io.micrometer.shaded.*",
                    "java.awt.*",
                    "jdk.*",
                    "sun.*",
                },
            },
            sources = {
                organizeImports = {
                    starThreshold = 9999,
                    staticStarThreshold = 9999,
                },
            },
            codeGeneration = {
                toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
                },
                hashCodeEquals = { useJava7Objects = true },
                useBlocks = true,
            },
        },
    },

    init_options = {
        bundles = {
            dap_path,
        },
    },
}

-- Attach debugger extensions (Spring)
vim.list_extend(config.init_options.bundles, require("spring_boot").java_extensions())

jdtls.start_or_attach(config)
