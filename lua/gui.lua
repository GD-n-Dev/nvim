local vim = vim

function Set(name, opt)    
    vim.api.nvim_set_hl(0, name, opt)
end

Set("ColorColumn", { ctermbg=0, bg=LightGrey })
Set("Normal", { ctermfg=White, ctermbg=Black })
