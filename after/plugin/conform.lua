require("conform").setup({
    formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        odin = { "ols" },
    },
    format_on_save = {
        lsp_format = "fallback",
        timeout_ms = 500,
    },
})

