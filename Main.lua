--[[ 
    👑 KRONOS PROJECT 4.0 | MEGA DATABASE
    Dono: red_wolf12370 
    Estrutura: 40 Categorias | 20 Scripts por Aba | SEM KEY
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👑 KRONOS PROJECT 4.0 | V42",
   LoadingTitle = "CARREGANDO DATABASE (SEM KEY)...",
   Theme = "Purple",
   ConfigurationSaving = { Enabled = false }
})

-- // 🛡️ FUNÇÃO DE EXECUÇÃO RÁPIDA //
local function Execute(url)
    task.spawn(function()
        local s, res = pcall(function() return game:HttpGet(url) end)
        if s and res and #res > 0 then loadstring(res)() end
    end)
end

-- // 🪖 ABA 01: EB DO DELTA (JJS & TREINO) //
local TabEB = Window:CreateTab("🪖 EB do Delta")
TabEB:CreateSection("Scripts Oficiais Pedrinhuu")
TabEB:CreateButton({Name = "💰 Khaos Money V1", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/refs/heads/main/Script.md") end})
TabEB:CreateButton({Name = "📜 Trink Menu (JJS)", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/Trink-Menu/refs/heads/main/Script.md") end})
TabEB:CreateButton({Name = "🏃 Pedrinhuu Parkour", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PARKUR/refs/heads/main/Script.md") end})
-- [Adicione mais 17 botões aqui para completar 20]

-- // 🌊 ABA 02: BLOX FRUITS //
local TabBF = Window:CreateTab("🌊 Blox Fruits")
TabBF:CreateButton({Name = "Redz Hub", Callback = function() Execute("https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua") end})
TabBF:CreateButton({Name = "W-Azure Lite", Callback = function() Execute("https://api.luarmor.net/files/v3/loaders/3b2169cf5333c0ffad8cf812832570c6.lua") end})
-- [Preencher até 20 botões]

-- // 🚗 ABA 03: BROOKHAVEN //
local TabBH = Window:CreateTab("🚗 Brookhaven")
TabBH:CreateButton({Name = "Ice Hub", Callback = function() Execute("https://raw.githubusercontent.com/IceBear-Scripts/IceBear-Scripts/main/IceHub.lua") end})
-- [Preencher até 20 botões]

-- // 👹 ABA 04: DOORS //
local TabDR = Window:CreateTab("👹 Doors")
TabDR:CreateButton({Name = "MSPAINT", Callback = function() Execute("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua") end})
-- [Preencher até 20 botões]

-- // 🔪 ABA 05: MURDER MYSTERY 2 //
local TabMM = Window:CreateTab("🔪 Murder Mystery 2")
TabMM:CreateButton({Name = "Viper Hub MM2", Callback = function() Execute("https://raw.githubusercontent.com/Viper-Hub/Viper/main/Main.lua") end})
-- [Preencher até 20 botões]

-- // 🚔 ABA 06: JAILBREAK //
local TabJB = Window:CreateTab("🚔 Jailbreak")
-- [Preencher até 20 botões]

-- // 🏀 ABA 07: BLADE BALL //
local TabBB = Window:CreateTab("🏀 Blade Ball")
-- [Preencher até 20 botões]

-- // 🏐 ABA 08: ESPORTES //
local TabSP = Window:CreateTab("🏐 Esportes")
-- [Preencher até 20 botões]

-- // 🛡️ ABA 39: UNIVERSAL //
local TabUni = Window:CreateTab("🌍 Universal")
TabUni:CreateButton({Name = "Infinite Yield", Callback = function() Execute("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source") end})
TabUni:CreateButton({Name = "CMD-X", Callback = function() Execute("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source") end})
TabUni:CreateButton({Name = "Dex Explorer", Callback = function() Execute("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua") end})
-- [Preencher até 20 botões]

-- // 📋 ABA 40: CRÉDITOS //
local TabCred = Window:CreateTab("📋 Créditos")
TabCred:CreateSection("Proprietário do Projeto")
TabCred:CreateLabel("👑 red_wolf12370")
TabCred:CreateSection("Redes Sociais")
TabCred:CreateButton({Name = "Copiar Discord", Callback = function() setclipboard("https://discord.gg/YMNch9M9F") end})
TabCred:CreateLabel("Versão: 4.0 | 2026 Build")

-- // CRIAÇÃO AUTOMÁTICA DAS ABAS FAMOSAS QUE FALTAM (09 a 38) //
local jogos = {"Adopt Me", "Pet Sim 99", "All Star TD", "Anime Adv", "Bedwars", "SharkBite", "Muscle Legends", "Bee Swarm", "Build A Boat", "Arsenal", "Piggy", "Natural Disaster", "Tower of Hell", "Pet Fighting", "Wild West", "Mad City", "Speed Run", "Pizza Place", "Brookhaven V2", "Tycoons", "Obbys", "Anime Vanguards", "Sol RNG", "Fisch", "Zombie Attack", "Livetopia", "Berry Avenue", "MeepCity", "Clicker Sim", "Strongman Sim"}

for i, nome in ipairs(jogos) do
    local tab = Window:CreateTab("🎮 "..nome)
    -- Cada aba dessa deve receber 20 scripts
end

Rayfield:Notify({Title = "KRONOS CARREGADO", Content = "40 Categorias Prontas!", Duration = 5})
