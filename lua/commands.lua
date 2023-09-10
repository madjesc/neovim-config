vim.api.nvim_create_user_command('SortLineL',
    [[:<line1>,<line2>!awk '{ print length(), $0 | "sort -n | cut -d\\  -f2-" }']],
    { range = true })

vim.api.nvim_create_user_command('Com2Apo',
    [[:<line1>,<line2>s/"/'/g ]],
    { range = true })

vim.api.nvim_create_user_command('Hyp2Under',
    [[:<line1>,<line2>s/-/_/g ]],
    { range = true })
