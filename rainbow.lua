--[[

Rainbow 🌈 (=0.6.1)

Is an example of using colorama

{rainbow symbol}$
{rainbow}$

by https://t.me/wavecat

--]]

require "com.wavecat.inline.libs.colorama"
require "com.wavecat.inline.libs.utf8"

colorama.init(inline)

local function rainbow(_, query)
    local args = (query:getArgs() == "" and "#" or query:getArgs())
    local line = args:rep(20 / utf8.len(args))

    query:answer(
        colorama.text(
            colorama.newline,
            colorama.font(line, "#FF0000"),
            colorama.font(line, "#FFFF00"),
            colorama.font(line, "#00FF00"),
            colorama.font(line, "#00FFFF"),
            colorama.font(line, "#0000FF"),
            colorama.font(line, "#FF00FF")
        )
    )
end

return function(module)
    module:registerCommand("rainbow", colorama.wrap(rainbow), "Rainbow")
end
