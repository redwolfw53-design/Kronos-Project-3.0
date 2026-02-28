--[[ 
    👑 KRONOS MULTI-HUB | V42 MASTER
    Dono: red_wolf12370 
    Colaboradores: Pedrinhuu Scripts & Kira
    Status: 100% SEM KEY / ANTI-CALLBACK ERROR
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👑 KRONOS ULTIMATE | V42",
   LoadingTitle = "CARREGANDO O IMPÉRIO KRONOS...",
   Theme = "Purple",
   ConfigurationSaving = { Enabled = false }
})

-- // FUNÇÃO DE CARGA SEGURA //
local function Execute(url)
    task.spawn(function()
        local s, res = pcall(function() return game:HttpGet(url) end)
        if s then loadstring(res)() else 
            Rayfield:Notify({Title = "ERRO", Content = "Link offline ou Delta bloqueou!", Duration = 3}) 
        end
    end)
end

-- // 1. CRÉDITOS //
local TabC = Window:CreateTab("💎 Créditos")
TabC:CreateButton({Name = "Copiar Discord Oficial", Callback = function() setclipboard("https://discord.gg/YMNch9M9F") end})
TabC:CreateLabel("👑 Dono: red_wolf12370")

-- // 2. 🔥 EB DO DELTA (ESPECIAL PEDRINHUU) //
local TabEb = Window:CreateTab("🔥 EB DO DELTA")
TabEb:CreateSection("Scripts Oficiais Pedrinhuu")
TabEb:CreateButton({Name = "🏃 Parkour (No Key)", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PARKUR/main/Script.md") end})
TabEb:CreateButton({Name = "💰 Khaos Money V1", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/main/Script.md") end})
TabEb:CreateButton({Name = "🛠️ Trink Menu", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/Trink-Menu/main/Script.md") end})
TabEb:CreateButton({Name = "🏅 Perfil / Patente Visual", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PERFIL/main/Script.md") end})

-- // 3. 🔫 FPS / PVP (AIMBOT & AIMLOCK) //
local TabPvp = Window:CreateTab("🔫 FPS / PVP")
TabPvp:CreateButton({Name = "🎯 Pedrinhuu Menu PVP (Aimlock)", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PVP-AIMBOT-AIMLOCK/main/Pedrinhuu%20Menu%20PVP%201.0") end})
TabPvp:CreateButton({Name = "🚀 Kira Menu 2.0 (PvP/Fly)", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/KIRA-2.0/main/Script.md") end})
TabPvp:CreateButton({Name = "🔫 ThunderZ FPS", Callback = function() Execute("https://raw.githubusercontent.com/ThunderZHub/Main/main/Arsenal.lua") end})

-- // 4. 🏐 VOLLEYBALL LEGACY //
local TabVl = Window:CreateTab("🏐 Volleyball")
TabVl:CreateButton({Name = "Ghost Hub V3", Callback = function() Execute("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub") end})
TabVl:CreateButton({Name = "Viper Hub (No Key)", Callback = function() Execute("https://raw.githubusercontent.com/Viper-Hub/Viper/main/Main.lua") end})

-- // 5. 🍍 BLOX FRUITS //
local TabBf = Window:CreateTab("🍍 Blox Fruits")
TabBf:CreateButton({Name = "Redz Hub", Callback = function() Execute("https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua") end})
TabBf:CreateButton({Name = "W-Azure Lite", Callback = function() Execute("https://api.luarmor.net/files/v3/loaders/3b2169cf5333c0ffad8cf812832570c6.lua") end})

-- // 6. 🌍 UNIVERSAL / TROLL (KIRA & ADMIN) //
local TabUni = Window:CreateTab("🌍 Universal / Troll")
TabUni:CreateButton({Name = "🌀 Kira Menu (Grau/Troll)", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/KIRA-MENU/main/Script.md") end})
TabUni:CreateButton({Name = "🚀 Kira 2.0 (Noclip/Fly)", Callback = function() Execute("https://raw.githubusercontent.com/PedrinhuuScripts/KIRA-2.0/main/Script.md") end})
TabUni:CreateButton({Name = "🌍 Infinite Yield", Callback = function() Execute("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source") end})

Rayfield:Notify({Title = "KRONOS V42 LOADED", Content = "Todos os scripts integrados!", Duration = 5})
