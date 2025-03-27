--[[

Loader Setup (необязательно)

Модуль который добавляет публичную директорию приложения в качестве директории для поиска модулей: /sdcard/Android/data/com.wavecat.inline/modules/ и устаналивает туда Loader

{reinstall}$ - повторно делает установку

by https://t.me/wavecat

--]]
require "com.wavecat.inline.libs.http"

local preferences = inline:getDefaultSharedPreferences()

local url = "https://kotov.tk/inline/loader.lua"
local path = "/storage/emulated/0/Android/data/com.wavecat.inline/files/modules/"
local filename = "loader.lua"

local function check()
    local file = io.open(path .. filename, "r")
    if file then
        file:close()
    end
    return file
end

local function get()
    local default = luajava.newInstance("java.util.HashSet")
    default:add("/storage/emulated/0/inline/")
    return preferences:getStringSet("path", default)
end

local function setup()
    local request = http.Request.Builder.new():url(url):get():build()

    http.call(
        request,
        function(_, response, string)
            local chunk, err = load(string)

            if not chunk then
                inline:toast "Unable to install update, file is corrupted"
                return
            end

            local modules = get()

            modules:add(path)
            preferences:edit():putStringSet("path", modules):apply()

            os.execute("mkdir -p /storage/emulated/0/Android/data/com.wavecat.inline/files/modules")

            local file = io.open(path .. filename, "w+")
            file:write(string)
            file:close()

            inline:createEnvironment()
            inline:toast "Loader installed"
        end,
        function(_, exception)
            inline:toast "Unable to download loader module"
        end
    )
end

local function reinstall(_, query)
    query:answer()
    setup()
end

return function(module)
    module:setCategory "Loader"
    module:registerCommand("reinstall", reinstall, "Reinstalls loader")

    if not check() or not get():contains(path) then
        setup()
        return
    end
end
