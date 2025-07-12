return {
    { "L3MON4D3/LuaSnip" },
    {
        "saghen/blink.cmp",
        dependencies = {
          "rafamadriz/friendly-snippets",
        },
        version = "*",
        config = function()
            local cmp = require("blink.cmp")
            cmp.setup({
                snippets = { preset = "luasnip" },
                signature = { enabled = false },
                appearance = {
                    use_nvim_cmp_as_default = false,
                    nerd_font_variant = "normal",
                },
                sources = {
                    default = { "lsp", --[["path",]] "snippets", --[["buffer"]] },
                    providers = {
                        cmdline = {
                            min_keyword_length = 2,
                        },
                    },
                },
                keymap = {
                  ["<Tab>"] = { "select_and_accept", "fallback"},
                  ["<C-d>"] = { "show_documentation", "hide_documentation", "fallback" },
                },
                cmdline = {
                    enabled = false,
                    completion = { menu = { auto_show = true } },
                    keymap = {
                        ["<CR>"] = { "accept_and_enter", "fallback" },
                    },
                },
                completion = {
                    menu = {
                        border = nil,
                        scrolloff = 1,
                        scrollbar = false,
                        auto_show = true,
                        draw = {
                            columns = {
                                { "kind_icon" },
                                { "label" --[[, "label_description", gap = 1 ]]},
                                { "kind" },
                                -- { "source_name" },
                            },
                        },
                    },
                    documentation = {
                        window = {
                            border = nil,
                            scrollbar = false,
                            winhighlight = 'Normal:BlinkCmpDoc,FloatBorder:BlinkCmpDocBorder,EndOfBuffer:BlinkCmpDoc',
                        },
                        auto_show = false,
                        auto_show_delay_ms = 500,
                    },
                },
            })

            require("luasnip.loaders.from_vscode").lazy_load()
        end,
    },
}


-- return {}
