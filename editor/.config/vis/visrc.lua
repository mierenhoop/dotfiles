require('vis')

local smart_backspace = require('plugins/vis-smart-backspace')

local function hasext(name, ext)
   ext = "." .. ext
   return name:sub(-#ext) == ext
end

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
   vis:command("set theme default-16")

   -- Syntax
   
   if win.file.name ~= nil and hasext(win.file.name, "res") then
      vis:command("set syntax reason")
   end

   -- Indent

   vis:command("set autoindent on")

   local expand = false
   local tabw = 4

   if win.syntax == "dmd" then
      expand = true
   elseif win.syntax == "lua" then
      expand = true
      tabw = 3
   end
   
   smart_backspace.tab_width = tabw
   vis:command("set expandtab " .. (expand and "on" or "off"))
   vis:command("set tabwidth " .. tostring(tabw))
end)
