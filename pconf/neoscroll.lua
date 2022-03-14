require('neoscroll').setup({
    hide_cursor = false,          -- Hide cursor while scrolling
    stop_eof = true,             -- Stop at <EOF> when scrolling downwards
    respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
    cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
})

local t = {}
-- Syntax: t[keys] = {function, {function arguments}}
-- Use the "sine" easing function
t['<Up>'] = {'scroll', {-10, 'true', '300', [['sine']]}}
t['<Down>'] = {'scroll', { 10, 'true', '300', [['sine']]}}


require('neoscroll.config').set_mappings(t)
