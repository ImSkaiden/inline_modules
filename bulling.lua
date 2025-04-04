--[[

Bulling (>0.5)

• Максимально ускорена работа модуля 

Для обновления необходимо удалить старый модуль, это можно сделать с помощью команд {files}$, а после {delete filename}$

Сгенерирует добрый ответ вашему собеседнику

{bull}$

by https://t.me/wavecat and https://t.me/aye_ya

--]]

local RandomAccessFile = luajava.bindClass("java.io.RandomAccessFile")
local StandardCharsets = luajava.bindClass("java.nio.charset.StandardCharsets")

local url = "https://raw.githubusercontent.com/imskaiden/inline_modules/refs/heads/main/store/phrases.txt"
local default = "/store/phrases.txt"

local dirpath

local function check()
    local file = io.open(dirpath .. default, "r")
    if file then
        file:close()
    end
    return file
end

local function generate()
    math.randomseed(os.time())
    local file = RandomAccessFile.new(dirpath .. default, "r")
    local location = math.random(0, file:length())
    file:seek(location)
    file:readLine()
    local line = StandardCharsets.ISO_8859_1:encode(file:readLine())
    file:close()
    return StandardCharsets.UTF_8:decode(line):toString()
end

local function bull(_, query)
    if not check() then
        local request = http.Request.Builder.new():url(url):get():build()
        query:answer("Downloading...")
        http.call(
            request,
            function(_, response, string)
                os.execute("mkdir " .. dirpath .. "/store")
                local file = io.open(dirpath .. default, "w+")
                file:write(string)
                file:close()
                query:answer(generate())
            end,
            function(_, exception)
                query:answer("Error while downloading phrases: " .. exception:getMessage())
            end
        )
        return
    end
    query:answer(generate())
end

return function(module)
    local path = module:getFilepath()
    dirpath = path:sub(1, path:match("^.*()/"))

    module:registerCommand("bull", bull, check() and generate() or "")
    module:saveLazyLoad()
end
