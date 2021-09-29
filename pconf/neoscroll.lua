require('neoscroll').setup({
    hide_cursor = true,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
-- Use the "sine" easing function
t['<Up>'] = {'scroll', {'-vim.wo.scroll', 'true', '350', [['sine']]}}
t['<Down>'] = {'scroll', { 'vim.wo.scroll', 'true', '350', [['sine']]}}


require('neoscroll.config').set_mappings(t)