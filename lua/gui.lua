local vim = vim

function Set(name, opt)    
    vim.api.nvim_set_hl(0, name, opt)
end

