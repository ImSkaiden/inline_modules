--[[

LyricsFinder (=0.6.1)

Search for lyrics

{lf name}$ -> Lyrics

by https://t.me/jjewuz upgrade by https://t.me/wavecat

--]]

require "com.wavecat.inline.libs.http"
require "com.wavecat.inline.libs.utils"

local function errorHandler(query)
    return function(_, e)
        query:answer("Failed to load lyrics: " .. e:getMessage())
    end
end

local function lf(_, query)
    if query:getArgs() == "" then
        query:answer()
        return
    end

    local request = http.Request.Builder.new()
                                    :url(http.buildUrl("https://api.deezer.com/search",
                                             {limit = 1, q = query:getArgs()}
                                    ))
                                    :get()
                                    :build()

    query:answer("Loading...")

    http.call(
        request,
        function(_, _, string)
            local data = luajava.newInstance("org.json.JSONObject", string):getJSONArray("data")

            if data:length() == 0 then
                query:answer("Can't find song")
                return
            end

            local song = data:getJSONObject(0)
            local artist = song:getJSONObject("artist"):getString("name")
            local title = song:getString("title")

            query:answer(artist .. " - " .. title .. " ...")

            local request = http.Request.Builder.new()
                                            :url("http://wavecat.nweb.site:8080/lyrics/v1/" .. artist .. "/" .. title)
                                            :get()
                                            :build()

            http.call(
                request,
                function(_, _, string)
                    local json = luajava.newInstance("org.json.JSONObject", string)
                    query:answer(json:optString("lyrics"))
                end,
                errorHandler(query)
            )
        end,
        errorHandler(query)
    )
end

return function(module)
    module:setCategory "LyricsFinder"
    module:registerCommand("lf", lf, "Find lyrics for songs")
end
