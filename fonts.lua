--[[

Fonts (=0.11(10))

Текстовые шрифты

Все шрифты: 𝕠𝕦𝕥𝕝𝕚𝕟𝕖. 𝘴𝘢𝘯𝘴_𝘪𝘵𝘢𝘭𝘪𝘤, sᴍᴀʟʟ_ᴄᴀᴘs, 𝗌𝖺𝗇𝗌, 𝒔𝒆𝒓𝒊𝒇_𝒃𝒐𝒍𝒅_𝒊𝒕𝒂𝒍𝒊𝒄, 𝘀𝗮𝗻𝘀_𝗯𝗼𝗹𝗱, 🅒🅘🅡🅒🅛🅔🅢_🅑🅛🅐🅒🅚, 𝑠𝑒𝑟𝑖𝑓_𝑖𝑡𝑎𝑙𝑖𝑐, 爪卂几ᘜ卂, 𝖌𝖔𝖙𝖍𝖎𝖈_𝖇𝖔𝖑𝖉. 𝚝𝚢𝚙𝚎𝚠𝚛𝚒𝚝𝚎𝚛, ᵗⁱⁿʸ, 𝐬𝐞𝐫𝐢𝐟_𝐛𝐨𝐥𝐝, ᑕOᗰIᑕ, 𝓈𝒸𝓇𝒾𝓅𝓉, 🅂🅀🅄🄰🅁🄴🅂, 𝔤𝔬𝔱𝔥𝔦𝔠, 🆂🆀🆄🅰️🆁🅴🆂_🅱️🅻🅰️🅲🅺, 𝙨𝙖𝙣𝙨_𝙗𝙤𝙡𝙙_𝙞𝙩𝙖𝙡𝙞𝙘, 𝓼𝓬𝓻𝓲𝓹𝓽_𝓫𝓸𝓵𝓭

Прочий текст {font Аргументы}$
Если есть аргументы то текст будет взят из них, иначе будет использован остальной текст

font - команда открывает меню выбора шрифта, достаточно нажать на нужный шрифт

by https://t.me/wavacat

--]]

require "com.wavecat.inline.libs.menu"
require "com.wavecat.inline.libs.utils"
require "com.wavecat.inline.libs.utf8"

local pattern = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM0123456789"

local fonts = {
    typewriter = {
        "𝚚",
        "𝚠",
        "𝚎",
        "𝚛",
        "𝚝",
        "𝚢",
        "𝚞",
        "𝚒",
        "𝚘",
        "𝚙",
        "𝚊",
        "𝚜",
        "𝚍",
        "𝚏",
        "𝚐",
        "𝚑",
        "𝚓",
        "𝚔",
        "𝚕",
        "𝚣",
        "𝚡",
        "𝚌",
        "𝚟",
        "𝚋",
        "𝚗",
        "𝚖",
        "𝚀",
        "𝚆",
        "𝙴",
        "𝚁",
        "𝚃",
        "𝚈",
        "𝚄",
        "𝙸",
        "𝙾",
        "𝙿",
        "𝙰",
        "𝚂",
        "𝙳",
        "𝙵",
        "𝙶",
        "𝙷",
        "𝙹",
        "𝙺",
        "𝙻",
        "𝚉",
        "𝚇",
        "𝙲",
        "𝚅",
        "𝙱",
        "𝙽",
        "𝙼"
    },
    outline = {
        "𝕢",
        "𝕨",
        "𝕖",
        "𝕣",
        "𝕥",
        "𝕪",
        "𝕦",
        "𝕚",
        "𝕠",
        "𝕡",
        "𝕒",
        "𝕤",
        "𝕕",
        "𝕗",
        "𝕘",
        "𝕙",
        "𝕛",
        "𝕜",
        "𝕝",
        "𝕫",
        "𝕩",
        "𝕔",
        "𝕧",
        "𝕓",
        "𝕟",
        "𝕞",
        "ℚ",
        "𝕎",
        "𝔼",
        "ℝ",
        "𝕋",
        "𝕐",
        "𝕌",
        "𝕀",
        "𝕆",
        "ℙ",
        "𝔸",
        "𝕊",
        "𝔻",
        "𝔽",
        "𝔾",
        "ℍ",
        "𝕁",
        "𝕂",
        "𝕃",
        "ℤ",
        "𝕏",
        "ℂ",
        "𝕍",
        "𝔹",
        "ℕ",
        "𝕄"
    },
    serif_bold = {
        "𝐪",
        "𝐰",
        "𝐞",
        "𝐫",
        "𝐭",
        "𝐲",
        "𝐮",
        "𝐢",
        "𝐨",
        "𝐩",
        "𝐚",
        "𝐬",
        "𝐝",
        "𝐟",
        "𝐠",
        "𝐡",
        "𝐣",
        "𝐤",
        "𝐥",
        "𝐳",
        "𝐱",
        "𝐜",
        "𝐯",
        "𝐛",
        "𝐧",
        "𝐦",
        "𝐐",
        "𝐖",
        "𝐄",
        "𝐑",
        "𝐓",
        "𝐘",
        "𝐔",
        "𝐈",
        "𝐎",
        "𝐏",
        "𝐀",
        "𝐒",
        "𝐃",
        "𝐅",
        "𝐆",
        "𝐇",
        "𝐉",
        "𝐊",
        "𝐋",
        "𝐙",
        "𝐗",
        "𝐂",
        "𝐕",
        "𝐁",
        "𝐍",
        "𝐌"
    },
    serif_bold_italic = {
        "𝒒",
        "𝒘",
        "𝒆",
        "𝒓",
        "𝒕",
        "𝒚",
        "𝒖",
        "𝒊",
        "𝒐",
        "𝒑",
        "𝒂",
        "𝒔",
        "𝒅",
        "𝒇",
        "𝒈",
        "𝒉",
        "𝒋",
        "𝒌",
        "𝒍",
        "𝒛",
        "𝒙",
        "𝒄",
        "𝒗",
        "𝒃",
        "𝒏",
        "𝒎",
        "𝑸",
        "𝑾",
        "𝑬",
        "𝑹",
        "𝑻",
        "𝒀",
        "𝑼",
        "𝑰",
        "𝑶",
        "𝑷",
        "𝑨",
        "𝑺",
        "𝑫",
        "𝑭",
        "𝑮",
        "𝑯",
        "𝑱",
        "𝑲",
        "𝑳",
        "𝒁",
        "𝑿",
        "𝑪",
        "𝑽",
        "𝑩",
        "𝑵",
        "𝑴"
    },
    serif_italic = {
        "𝑞",
        "𝑤",
        "𝑒",
        "𝑟",
        "𝑡",
        "𝑦",
        "𝑢",
        "𝑖",
        "𝑜",
        "𝑝",
        "𝑎",
        "𝑠",
        "𝑑",
        "𝑓",
        "𝑔",
        "ℎ",
        "𝑗",
        "𝑘",
        "𝑙",
        "𝑧",
        "𝑥",
        "𝑐",
        "𝑣",
        "𝑏",
        "𝑛",
        "𝑚",
        "𝑄",
        "𝑊",
        "𝐸",
        "𝑅",
        "𝑇",
        "𝑌",
        "𝑈",
        "𝐼",
        "𝑂",
        "𝑃",
        "𝐴",
        "𝑆",
        "𝐷",
        "𝐹",
        "𝐺",
        "𝐻",
        "𝐽",
        "𝐾",
        "𝐿",
        "𝑍",
        "𝑋",
        "𝐶",
        "𝑉",
        "𝐵",
        "𝑁",
        "𝑀"
    },
    small_caps = {
        "ǫ",
        "ᴡ",
        "ᴇ",
        "ʀ",
        "ᴛ",
        "ʏ",
        "ᴜ",
        "ɪ",
        "ᴏ",
        "ᴘ",
        "ᴀ",
        "s",
        "ᴅ",
        "ғ",
        "ɢ",
        "ʜ",
        "ᴊ",
        "ᴋ",
        "ʟ",
        "ᴢ",
        "x",
        "ᴄ",
        "ᴠ",
        "ʙ",
        "ɴ",
        "ᴍ",
        "Q",
        "W",
        "E",
        "R",
        "T",
        "Y",
        "U",
        "I",
        "O",
        "P",
        "A",
        "S",
        "D",
        "F",
        "G",
        "H",
        "J",
        "K",
        "L",
        "Z",
        "X",
        "C",
        "V",
        "B",
        "N",
        "M"
    },
    script = {
        "𝓆",
        "𝓌",
        "ℯ",
        "𝓇",
        "𝓉",
        "𝓎",
        "𝓊",
        "𝒾",
        "ℴ",
        "𝓅",
        "𝒶",
        "𝓈",
        "𝒹",
        "𝒻",
        "ℊ",
        "𝒽",
        "𝒿",
        "𝓀",
        "𝓁",
        "𝓏",
        "𝓍",
        "𝒸",
        "𝓋",
        "𝒷",
        "𝓃",
        "𝓂",
        "𝒬",
        "𝒲",
        "ℰ",
        "ℛ",
        "𝒯",
        "𝒴",
        "𝒰",
        "ℐ",
        "𝒪",
        "𝒫",
        "𝒜",
        "𝒮",
        "𝒟",
        "ℱ",
        "𝒢",
        "ℋ",
        "𝒥",
        "𝒦",
        "ℒ",
        "𝒵",
        "𝒳",
        "𝒞",
        "𝒱",
        "ℬ",
        "𝒩",
        "ℳ"
    },
    script_bold = {
        "𝓺",
        "𝔀",
        "𝓮",
        "𝓻",
        "𝓽",
        "𝔂",
        "𝓾",
        "𝓲",
        "𝓸",
        "𝓹",
        "𝓪",
        "𝓼",
        "𝓭",
        "𝓯",
        "𝓰",
        "𝓱",
        "𝓳",
        "𝓴",
        "𝓵",
        "𝔃",
        "𝔁",
        "𝓬",
        "𝓿",
        "𝓫",
        "𝓷",
        "𝓶",
        "𝓠",
        "𝓦",
        "𝓔",
        "𝓡",
        "𝓣",
        "𝓨",
        "𝓤",
        "𝓘",
        "𝓞",
        "𝓟",
        "𝓐",
        "𝓢",
        "𝓓",
        "𝓕",
        "𝓖",
        "𝓗",
        "𝓙",
        "𝓚",
        "𝓛",
        "𝓩",
        "𝓧",
        "𝓒",
        "𝓥",
        "𝓑",
        "𝓝",
        "𝓜"
    },
    sans_bold = {
        "𝗾",
        "𝘄",
        "𝗲",
        "𝗿",
        "𝘁",
        "𝘆",
        "𝘂",
        "𝗶",
        "𝗼",
        "𝗽",
        "𝗮",
        "𝘀",
        "𝗱",
        "𝗳",
        "𝗴",
        "𝗵",
        "𝗷",
        "𝗸",
        "𝗹",
        "𝘇",
        "𝘅",
        "𝗰",
        "𝘃",
        "𝗯",
        "𝗻",
        "𝗺",
        "𝗤",
        "𝗪",
        "𝗘",
        "𝗥",
        "𝗧",
        "𝗬",
        "𝗨",
        "𝗜",
        "𝗢",
        "𝗣",
        "𝗔",
        "𝗦",
        "𝗗",
        "𝗙",
        "𝗚",
        "𝗛",
        "𝗝",
        "𝗞",
        "𝗟",
        "𝗭",
        "𝗫",
        "𝗖",
        "𝗩",
        "𝗕",
        "𝗡",
        "𝗠"
    },
    sans_bold_italic = {
        "𝙦",
        "𝙬",
        "𝙚",
        "𝙧",
        "𝙩",
        "𝙮",
        "𝙪",
        "𝙞",
        "𝙤",
        "𝙥",
        "𝙖",
        "𝙨",
        "𝙙",
        "𝙛",
        "𝙜",
        "𝙝",
        "𝙟",
        "𝙠",
        "𝙡",
        "𝙯",
        "𝙭",
        "𝙘",
        "𝙫",
        "𝙗",
        "𝙣",
        "𝙢",
        "𝙌",
        "𝙒",
        "𝙀",
        "𝙍",
        "𝙏",
        "𝙔",
        "𝙐",
        "𝙄",
        "𝙊",
        "𝙋",
        "𝘼",
        "𝙎",
        "𝘿",
        "𝙁",
        "𝙂",
        "𝙃",
        "𝙅",
        "𝙆",
        "𝙇",
        "𝙕",
        "𝙓",
        "𝘾",
        "𝙑",
        "𝘽",
        "𝙉",
        "𝙈"
    },
    sans_italic = {
        "𝘲",
        "𝘸",
        "𝘦",
        "𝘳",
        "𝘵",
        "𝘺",
        "𝘶",
        "𝘪",
        "𝘰",
        "𝘱",
        "𝘢",
        "𝘴",
        "𝘥",
        "𝘧",
        "𝘨",
        "𝘩",
        "𝘫",
        "𝘬",
        "𝘭",
        "𝘻",
        "𝘹",
        "𝘤",
        "𝘷",
        "𝘣",
        "𝘯",
        "𝘮",
        "𝘘",
        "𝘞",
        "𝘌",
        "𝘙",
        "𝘛",
        "𝘠",
        "𝘜",
        "𝘐",
        "𝘖",
        "𝘗",
        "𝘈",
        "??",
        "𝘋",
        "𝘍",
        "𝘎",
        "𝘏",
        "𝘑",
        "𝘒",
        "𝘓",
        "𝘡",
        "𝘟",
        "𝘊",
        "𝘝",
        "𝘉",
        "𝘕",
        "𝘔"
    },
    sans = {
        "𝗊",
        "𝗐",
        "𝖾",
        "𝗋",
        "𝗍",
        "𝗒",
        "𝗎",
        "𝗂",
        "𝗈",
        "𝗉",
        "𝖺",
        "𝗌",
        "𝖽",
        "𝖿",
        "𝗀",
        "𝗁",
        "𝗃",
        "𝗄",
        "𝗅",
        "𝗓",
        "𝗑",
        "𝖼",
        "𝗏",
        "𝖻",
        "𝗇",
        "𝗆",
        "𝖰",
        "𝖶",
        "𝖤",
        "𝖱",
        "𝖳",
        "𝖸",
        "𝖴",
        "𝖨",
        "𝖮",
        "𝖯",
        "𝖠",
        "𝖲",
        "𝖣",
        "𝖥",
        "𝖦",
        "𝖧",
        "𝖩",
        "𝖪",
        "𝖫",
        "𝖹",
        "𝖷",
        "𝖢",
        "𝖵",
        "𝖡",
        "𝖭",
        "𝖬"
    },
    gothic = {
        "𝔮",
        "𝔴",
        "𝔢",
        "𝔯",
        "𝔱",
        "𝔶",
        "𝔲",
        "𝔦",
        "𝔬",
        "𝔭",
        "𝔞",
        "𝔰",
        "𝔡",
        "𝔣",
        "𝔤",
        "𝔥",
        "𝔧",
        "𝔨",
        "𝔩",
        "𝔷",
        "𝔵",
        "𝔠",
        "𝔳",
        "𝔟",
        "𝔫",
        "𝔪",
        "𝔔",
        "𝔚",
        "𝔈",
        "ℜ",
        "𝔗",
        "𝔜",
        "𝔘",
        "ℑ",
        "𝔒",
        "𝔓",
        "𝔄",
        "𝔖",
        "𝔇",
        "𝔉",
        "𝔊",
        "ℌ",
        "𝔍",
        "𝔎",
        "𝔏",
        "ℨ",
        "𝔛",
        "ℭ",
        "𝔙",
        "𝔅",
        "𝔑",
        "𝔐"
    },
    gothic_bold = {
        "𝖖",
        "𝖜",
        "𝖊",
        "𝖗",
        "𝖙",
        "𝖞",
        "𝖚",
        "𝖎",
        "𝖔",
        "𝖕",
        "𝖆",
        "𝖘",
        "𝖉",
        "𝖋",
        "𝖌",
        "𝖍",
        "𝖏",
        "𝖐",
        "𝖑",
        "𝖟",
        "𝖝",
        "𝖈",
        "𝖛",
        "𝖇",
        "𝖓",
        "𝖒",
        "𝕼",
        "𝖂",
        "𝕰",
        "𝕽",
        "𝕿",
        "𝖄",
        "𝖀",
        "𝕴",
        "𝕺",
        "𝕻",
        "𝕬",
        "𝕾",
        "𝕯",
        "𝕱",
        "𝕲",
        "𝕳",
        "𝕵",
        "𝕶",
        "𝕷",
        "𝖅",
        "𝖃",
        "𝕮",
        "𝖁",
        "𝕭",
        "𝕹",
        "𝕸"
    },
    tiny = {
        "ᵠ",
        "ʷ",
        "ᵉ",
        "ʳ",
        "ᵗ",
        "ʸ",
        "ᵘ",
        "ⁱ",
        "ᵒ",
        "ᵖ",
        "ᵃ",
        "ˢ",
        "ᵈ",
        "ᶠ",
        "ᵍ",
        "ʰ",
        "ʲ",
        "ᵏ",
        "ˡ",
        "ᶻ",
        "ˣ",
        "ᶜ",
        "ᵛ",
        "ᵇ",
        "ⁿ",
        "ᵐ"
    },
    comic = {
        "ᑫ",
        "ᗯ",
        "ᗴ",
        "ᖇ",
        "T",
        "Y",
        "ᑌ",
        "I",
        "O",
        "ᑭ",
        "ᗩ",
        "Տ",
        "ᗪ",
        "ᖴ",
        "ᘜ",
        "ᕼ",
        "ᒍ",
        "K",
        "ᒪ",
        "ᘔ",
        "᙭",
        "ᑕ",
        "ᐯ",
        "ᗷ",
        "ᑎ",
        "ᗰ"
    },
    circles_black = {
        "🅠",
        "🅦",
        "🅔",
        "🅡",
        "🅣",
        "🅨",
        "🅤",
        "🅘",
        "🅞",
        "🅟",
        "🅐",
        "🅢",
        "🅓",
        "🅕",
        "🅖",
        "🅗",
        "🅙",
        "🅚",
        "🅛",
        "🅩",
        "🅧",
        "🅒",
        "🅥",
        "🅑",
        "🅝",
        "🅜"
    },
    squares = {
        "🅀",
        "🅆",
        "🄴",
        "🅁",
        "🅃",
        "🅈",
        "🅄",
        "🄸",
        "🄾",
        "🄿",
        "🄰",
        "🅂",
        "🄳",
        "🄵",
        "🄶",
        "🄷",
        "🄹",
        "🄺",
        "🄻",
        "🅉",
        "🅇",
        "🄲",
        "🅅",
        "🄱",
        "🄽",
        "🄼"
    },
    squares_black = {
        "🆀",
        "🆆",
        "🅴",
        "🆁",
        "🆃",
        "🆈",
        "🆄",
        "🅸",
        "🅾",
        "🅿",
        "🅰",
        "🆂",
        "🅳",
        "🅵",
        "🅶",
        "🅷",
        "🅹",
        "🅺",
        "🅻",
        "🆉",
        "🆇",
        "🅲",
        "🆅",
        "🅱",
        "🅽",
        "🅼"
    },
    manga = {
        "Ҩ",
        "山",
        "乇",
        "尺",
        "ㄒ",
        "ㄚ",
        "ㄩ",
        "|",
        "ㄖ",
        "卩",
        "卂",
        "丂",
        "ᗪ",
        "千",
        "ᘜ",
        "卄",
        "ﾌ",
        "Ҝ",
        "ㄥ",
        "乙",
        "乂",
        "匚",
        "ᐯ",
        "乃",
        "几",
        "爪"
    }
}

local function apply(font, text)
    return text:gsub(
            utf8.charpattern,
            function(c)
                local p = pattern:find(utils.escape(c))
                return font[p] or c
            end
    )
end

local function next(input, query, v)
    if query:getArgs() ~= "" then
        query:answer(apply(v, query:getArgs()))
    else
        inline:setText(input, apply(v, query:replaceExpression("")))
    end
end

local function font(_, query)
    local buttons = {}

    for k, v in pairs(fonts) do
        buttons[#buttons + 1] = {
            caption = "[" .. apply(v, k) .. "]",
            action = function(input, query)
                next(input, query, v)
            end
        }

        buttons[#buttons + 1] = " "
    end

    menu.create(query, buttons, font)
end

return function(module)
    module:setCategory("Fonts")
    module:registerCommand("font", font, "Apply textfont")
    for k, v in pairs(fonts) do
        module:registerCommand(
                k,
                function(input, query)
                    next(input, query, v)
                end,
                apply(v, k)
        )
    end
    module:saveLazyLoad()
end
