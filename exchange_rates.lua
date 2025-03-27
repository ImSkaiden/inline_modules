--[[

Exchange Rates

Модуль создан для распознания в тексте пар чисел и валют, с автоматическим последующим переводом их в другие валюты по актуальным курсам.

10руб,$; -> 0.17234 $ (10 руб)
100$,грн; -> 3674.0188 грн (100 $)
1$,€; -> 1.018095 € (1 $)
100usd,eur; -> 101.8095 eur (100 usd)

Обновление курса происходит раз в 4 часа (если выполнить команду)

by https://t.me/wavecat

--]]

require "com.wavecat.inline.libs.http"
require "com.wavecat.inline.libs.utf8"

local aliases = {
    ["$"] = "usd",
    ["€"] = "eur",
    ["₽"] = "rub",
    ["¥"] = "jpy",
    ["£"] = "gbp",
    ["руб"] = "rub",
    ["грн"] = "uah",
    ["рубль"] = "rub",
    ["гривна"] = "uah",
    ["евро"] = "eur",
    ["доллар"] = "usd",
    ["тенге"] = "kzt",
    ["йен"] = "jpy"
}

local data = {}
local tasks = 0

local function watcher(input)
    if tasks > 0 then
        return
    end
    local text = input:getText()
    if text == nil or text.toString == nil then
        return
    end
    text = text:toString()
    local result =
        text:gsub(
        "(%d+)%s*(%S+)%s*,%s*(%S+)%s*;",
        function(n, b, r)
            local base = aliases[b] or b
            local result = aliases[r] or r
            if data[base] and os.time() - data[base].timestamp < 14400 then
                return (data[base].currency[result] or 0) * n .. " " .. r .. " (" .. n .. " " .. b .. ")"
            else
                tasks = tasks + 1
                http.call(
                    http.Request.Builder.new():url(
                        "https://cdn.jsdelivr.net/gh/fawazahmed0/currency-api@1/latest/currencies/" ..
                            base .. ".min.json"
                    ):get():build(),
                    function(_, _, string)
                        data[base] = {
                            currency = {},
                            timestamp = os.time()
                        }
                        pcall(
                            function()
                                data[base].currency = json.load(string)[base]
                                if data[base].currency == nil then
                                    data[base].currency = {}
                                end
                                input:refresh()
                                watcher(input)
                            end
                        )
                        tasks = tasks - 1
                    end,
                    function()
                        tasks = tasks - 1
                    end
                )
            end
        end
    )
    if text ~= result then
        inline:setText(input, result)
    end
end

return function(module)
    module:registerWatcher(watcher)
end
