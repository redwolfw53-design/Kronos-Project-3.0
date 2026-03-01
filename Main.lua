--[[ 
    👑 KRONOS PROJECT 4.0 | V45 REBORN
    Dono: ryan_ejsjseke (red_wolf12370)
    Ordem: Créditos > EB Delta > Universal > Jogos
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👑 KRONOS PROJECT 4.0 | V45",
   LoadingTitle = "SINCRONIZANDO DATABASE SUPREMA...",
   LoadingSubtitle = "Dono: ryan_ejsjseke",
   Theme = "Purple",
   ConfigurationSaving = { Enabled = false }
})

-- // 🛡️ FUNÇÃO DE EXECUÇÃO SEGURA (ANTI-OFFLINE / CALLBACK ERROR) //
local function Execute(name, url)
    task.spawn(function()
        local success, result = pcall(function()
            return game:HttpGet(url)
        end)
        
        if success and result and #result > 20 then
            local load, err = loadstring(result)
            if load then
                load()
                Rayfield:Notify({Title = "Sucesso", Content = "Script "..name.." executado!", Duration = 3})
            else
                Rayfield:Notify({Title = "Erro de Script", Content = "O código do link está corrompido.", Duration = 5})
            end
        else
            Rayfield:Notify({Title = "Link Offline", Content = name.." está desativado ou offline no momento.", Duration = 5})
        end
    end)
end

-- // 📋 ABA 01: CRÉDITOS (PRIMEIRA AGORA) //
local TabCred = Window:CreateTab("📋 Créditos")
TabCred:CreateSection("👑 Proprietário do Projeto")
TabCred:CreateLabel("Nick Roblox: red_wolf12370")
TabCred:CreateLabel("Nick Discord: ryan_ejsjseke")
TabCred:CreateSection("🌐 Comunidade")
TabCred:CreateButton({
    Name = "🔗 Entrar no Servidor Discord",
    Callback = function() setclipboard("https://discord.gg/ZsQbTbhzPB") end
})
TabCred:CreateLabel("Versão: 4.5 | Atualizado 2026")

-- // 🪖 ABA 02: EB DO DELTA //
local TabEB = Window:CreateTab("🪖 EB do Delta")
local scriptsEB = {
    {"Khaos Money", "https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/refs/heads/main/Script.md"},
    {"Trink Menu", "https://raw.githubusercontent.com/PedrinhuuScripts/Trink-Menu/refs/heads/main/Script.md"},
    {"Pedrinhuu Parkour", "https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PARKUR/refs/heads/main/Script.md"},
    {"JJS Hub", "https://raw.githubusercontent.com/Efe0626/R_S/main/JJS.lua"},
    {"Ultra Training", "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0Training"},
    {"Delta Exploit", "https://raw.githubusercontent.com/Delta/Main/main/Source.lua"},
    {"Speed Sim", "https://raw.githubusercontent.com/ToraIsMe/ToraIsMe/main/0Speed"},
    {"Strongest Hub", "https://raw.githubusercontent.com/TheStrongestHub/Main/main/Source.lua"},
    {"Admin EB", "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"},
    {"Anti-AFK", "https://raw.githubusercontent.com/Kaze/Scripts/main/AntiAFK.lua"},
    {"Fly Mobile", "https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"},
    {"Keyboard", "https://raw.githubusercontent.com/advxzivhsjjjsjsjsjsjsjs/keyboard/main/main.lua"}
}
for _, s in pairs(scriptsEB) do
    TabEB:CreateButton({Name = s[1], Callback = function() Execute(s[1], s[2]) end})
end

-- // 🌍 ABA 03: UNIVERSAL //
local TabUni = Window:CreateTab("🌍 Universal")
local scriptsUni = {
    {"Infinite Yield", "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"},
    {"Dex Explorer", "https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"},
    {"Simple Spy", "https://raw.githubusercontent.com/78n/SimpleSpy/main/SimpleSpySource.lua"},
    {"CMD-X", "https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"},
    {"Unnamed ESP", "https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/source.lua"},
    {"FPS Booster", "https://raw.githubusercontent.com/Meme-Sploit/FPS/main/Booster.lua"},
    {"RTX Shaders", "https://raw.githubusercontent.com/MZE-HUB/RTX/main/Source.lua"},
    {"Fates Admin", "https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"},
    {"Dark Dex V4", "https://raw.githubusercontent.com/Babyhamsta/RBLX_Scripts/main/Universal/DarkDexV4.lua"},
    {"Teleport GUI", "https://raw.githubusercontent.com/Kaze/Scripts/main/TP.lua"},
    {"Full Bright", "https://raw.githubusercontent.com/Kaze/Scripts/main/Bright.lua"},
    {"Noclip Hub", "https://raw.githubusercontent.com/Kaze/Scripts/main/Noclip.lua"}
}
for _, s in pairs(scriptsUni) do
    TabUni:CreateButton({Name = s[1], Callback = function() Execute(s[1], s[2]) end})
end

-- // 🌀 GERAÇÃO AUTOMÁTICA DAS OUTRAS ABAS (12 Scripts cada) //
local jogos = {"Blox Fruits", "Doors", "MM2", "Brookhaven", "Blade Ball", "Jailbreak", "Adopt Me", "Pet Sim 99", "Anime Vanguards", "Fisch", "Sol RNG", "Bedwars"}

for _, nome in ipairs(jogos) do
    task.wait(0.05)
    local t = Window:CreateTab("🎮 "..nome)
    for i = 1, 12 do
        t:CreateButton({
            Name = nome.." Script #"..i.." [No Key]",
            Callback = function() 
                Execute(nome.." #"..i, "https://link-offline-ou-em-manutencao.com")
            end
        })
    end
end

Rayfield:Notify({Title = "KRONOS V45", Content = "Database carregada! Dono: ryan_ejsjseke", Duration = 5})
