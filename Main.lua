--[[ 
    👑 KRONOS MULTI-HUB | V33 DEFINITIVE
    Dono: red_wolf12370 
    Discord: https://discord.gg/YMNch9M9F
    Tema: Gengar Shadow (Deep Purple)
    Foco: Créditos + EB Delta + 15 Categorias (3 Scripts cada)
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👑 KRONOS MULTI-HUB | V33",
   LoadingTitle = "BEM-VINDO AO IMPÉRIO KRONOS...",
   Theme = "Purple",
   ConfigurationSaving = { Enabled = false }
})

-- // 1. CATEGORIA: CRÉDITOS (A PRIMEIRA) //
local TabCred = Window:CreateTab("💎 Créditos")
TabCred:CreateSection("👑 Criador & Dono")
TabCred:CreateLabel("Script por: red_wolf12370")
TabCred:CreateSection("📱 Comunidade")
TabCred:CreateButton({
   Name = "Copiar Link do Discord",
   Callback = function()
      setclipboard("https://discord.gg/YMNch9M9F")
      Rayfield:Notify({Title = "DISCORD", Content = "Link copiado para a área de transferência!", Duration = 5})
   end,
})
TabCred:CreateParagraph({Title = "Suporte:", Content = "Entre no nosso Discord para atualizações, novos scripts e suporte direto com a equipe."})

-- // 2. CATEGORIA ESPECIAL: EB DO DELTA (PEDRINHUU) //
local TabEb = Window:CreateTab("🔥 EB DO DELTA")
TabEb:CreateButton({Name = "🏃 Pedrinhuu Parkour (No Key)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PARKUR/refs/heads/main/Script.md"))() end})
TabEb:CreateButton({Name = "💰 Khaos Money V1 (No Key)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/refs/heads/main/Script.md"))() end})
TabEb:CreateButton({Name = "🛠️ Trink Menu (No Key)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/Trink-Menu/refs/heads/main/Script.md"))() end})

-- // 3. CATEGORIA: VOLLEYBALL LEGACY //
local TabVl = Window:CreateTab("🏐 Volleyball")
TabVl:CreateButton({Name = "Ghost Hub (Legacy/VBA)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub"))() end})
TabVl:CreateButton({Name = "Viper Hub (No Key)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Viper-Hub/Viper/main/Main.lua"))() end})
TabVl:CreateButton({Name = "Krypton Ball Tracker", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Krypton/BallTracker/main/Source.lua"))() end})

-- // 4. CATEGORIA: BLOX FRUITS //
local TabBf = Window:CreateTab("🍍 Blox Fruits")
TabBf:CreateButton({Name = "Redz Hub (Melhor Mobile)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua"))() end})
TabBf:CreateButton({Name = "MUKURU Hub (No Key)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XeroHub/Main/main/BloxFruits.lua"))() end})
TabBf:CreateButton({Name = "W-Azure Lite", Callback = function() loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf5333c0ffad8cf812832570c6.lua"))() end})

-- // 5. CATEGORIA: BROOKHAVEN //
local TabBk = Window:CreateTab("🏠 Brookhaven")
TabBk:CreateButton({Name = "Ice Hub V2", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))() end})
TabBk:CreateButton({Name = "S-S-R-S Troll Menu", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/S-S-R-S/R6/main/Main.lua"))() end})
TabBk:CreateButton({Name = "Infinite Yield Admin", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end})

-- // 6. CATEGORIA: DOORS //
local TabDoors = Window:CreateTab("👁️ Doors")
TabDoors:CreateButton({Name = "MSPAINT (Full Doors)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))() end})
TabDoors:CreateButton({Name = "Morph Hub (Monstros)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/S-S-R-S/Doors/main/Morphs.lua"))() end})
TabDoors:CreateButton({Name = "Entity Spawner", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DXV-Scripts/Doors/main/Spawner.lua"))() end})

-- // 7. CATEGORIA: BLADE BALL //
local TabBb = Window:CreateTab("⚔️ Blade Ball")
TabBb:CreateButton({Name = "FFJ Auto Parry", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/Scripts/BladeBall.lua"))() end})
TabBb:CreateButton({Name = "Visual Ball Beta", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/S-S-R-S/BladeBall/main/Visual.lua"))() end})
TabBb:CreateButton({Name = "H17 Sniper Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/H17-Hub/BladeBall/main/Main.lua"))() end})

-- // 8. CATEGORIA: BEDWARS //
local TabBed = Window:CreateTab("🛏️ Bedwars")
TabBed:CreateButton({Name = "Vape V4 (PvP God)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua"))() end})
TabBed:CreateButton({Name = "Nightmare Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/S-S-R-S/Bedwars/main/Nightmare.lua"))() end})
TabBed:CreateButton({Name = "Kill Aura V3", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Gamer101/Bedwars/main/Source.lua"))() end})

-- // 9. CATEGORIA: PET SIMULATOR 99 //
local TabPs = Window:CreateTab("🐱 Pet Sim 99")
TabPs:CreateButton({Name = "Zap Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ZapHub-Roblox/Main/main/PetSim99.lua"))() end})
TabPs:CreateButton({Name = "BlackTrap Lite", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/BlackTrap/Main/main/PS99.lua"))() end})
TabPs:CreateButton({Name = "PS99 Sniper", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Gamer101/PetSim/main/Source.lua"))() end})

-- // 10. CATEGORIA: ARSENAL/FPS //
local TabFps = Window:CreateTab("🔫 FPS/Arsenal")
TabFps:CreateButton({Name = "ThunderZ Aimbot", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZHub/Main/main/Arsenal.lua"))() end})
TabFps:CreateButton({Name = "OwlHub (Universal)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))() end})
TabFps:CreateButton({Name = "Silent Aim Elite", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Gamer101/SilentAim/main/Source.lua"))() end})

-- // 11. CATEGORIA: MURDER MYSTERY 2 //
local TabMm2 = Window:CreateTab("🔪 MM2")
TabMm2:CreateButton({Name = "Vynixius Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))() end})
TabMm2:CreateButton({Name = "MM2 God Mode", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Gamer101/MM2/main/Source.lua"))() end})
TabMm2:CreateButton({Name = "Auto-Win Murder", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/S-S-R-S/MM2/main/Main.lua"))() end})

-- // 12. CATEGORIA: FISCH //
local TabFi = Window:CreateTab("🎣 Fisch")
TabFi:CreateButton({Name = "Zenith Hub (Auto Fish)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Zenith/Fisch/main/Source.lua"))() end})
TabFi:CreateButton({Name = "Fisch Sniper", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/S-S-R-S/Fisch/main/Main.lua"))() end})
TabFi:CreateButton({Name = "Instant Catch", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Gamer101/Fisch/main/Source.lua"))() end})

-- // 13. CATEGORIA: ANIME VANGUARD //
local TabAv = Window:CreateTab("🌌 Anime Vanguard")
TabAv:CreateButton({Name = "Gamer Hub Auto Farm", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Gamer101/AnimeVanguard/main/Source.lua"))() end})
TabAv:CreateButton({Name = "Vanguard Lite", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/S-S-R-S/AnimeVanguard/main/Main.lua"))() end})
TabAv:CreateButton({Name = "Xero Hub Vanguard", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XeroHub/Main/main/AnimeVanguard.lua"))() end})

-- // 14. CATEGORIA: BEE SWARM //
local TabBee = Window:CreateTab("🐝 Bee Swarm")
TabBee:CreateButton({Name = "Ape Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ApeHub/Main/main/BeeSwarm.lua"))() end})
TabBee:CreateButton({Name = "Bee Swarm God", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Gamer101/BeeSwarm/main/Source.lua"))() end})
TabBee:CreateButton({Name = "Auto-Honey", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/S-S-R-S/BeeSwarm/main/Main.lua"))() end})

-- // 15. CATEGORIA: UNIVERSAL //
local TabUni = Window:CreateTab("🌍 Universal")
TabUni:CreateButton({Name = "Infinite Yield", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})
TabUni:CreateButton({Name = "CMD-X Admin", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))() end})
TabUni:CreateButton({Name = "Dex Explorer", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() end})

Rayfield:Notify({Title = "KRONOS V33 PRONTO", Content = "Créditos, EB Delta e 15 Categorias Ativas!", Duration = 5})
