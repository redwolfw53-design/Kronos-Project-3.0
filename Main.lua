--[[ 
    👑 KRONOS MULTI-HUB V30 | O IMPÉRIO DO DELTA
    Dono: red_wolf12370 
    Tema: Gengar Shadow (Roxo Dark)
    Descrição: 15 Categorias com os Melhores Scripts do Roblox
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👑 KRONOS MULTI-HUB | V30",
   LoadingTitle = "CARREGANDO O IMPÉRIO DE SCRIPTS...",
   Theme = "Purple",
   ConfigurationSaving = { Enabled = false }
})

-- // 1. CATEGORIA: PARKOUR (PEDRINHUU) //
local TabPk = Window:CreateTab("🏃 Parkour")
TabPk:CreateButton({
   Name = "Executar Pedrinhuu Parkour",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PARKUR/refs/heads/main/Script.md"))()
   end,
})

-- // 2. CATEGORIA: VOLLEYBALL LEGACY //
local TabVl = Window:CreateTab("🏐 Volleyball")
TabVl:CreateButton({
   Name = "Executar Ghost Hub (O Melhor)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub"))()
   end,
})

-- // 3. CATEGORIA: BLOX FRUITS //
local TabBf = Window:CreateTab("🍍 Blox Fruits")
TabBf:CreateButton({
   Name = "Redz Hub (Auto Farm Rápido)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua"))()
   end,
})
TabBf:CreateButton({
   Name = "Hoho Hub (Estável)",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/acsu123/HOHO_HUB/main/Start'))()
   end,
})

-- // 4. CATEGORIA: MONEY/ECONOMY //
local TabMon = Window:CreateTab("💰 Money/Farm")
TabMon:CreateButton({
   Name = "Khaos Money V1",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/refs/heads/main/Script.md"))()
   end,
})

-- // 5. CATEGORIA: TRINK MENU //
local TabTrink = Window:CreateTab("🛠️ Trink Menu")
TabTrink:CreateButton({
   Name = "Executar Trink Menu",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/Trink-Menu/refs/heads/main/Script.md"))()
   end,
})

-- // 6. CATEGORIA: BROOKHAVEN //
local TabBk = Window:CreateTab("🏠 Brookhaven")
TabBk:CreateButton({
   Name = "Ice Hub (Troll/Admin)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMael7/NewIceHub/main/Brookhaven"))()
   end,
})

-- // 7. CATEGORIA: DOORS //
local TabDoors = Window:CreateTab("👁️ Doors")
TabDoors:CreateButton({
   Name = "MSPAINT (Melhor do Doors)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/notpoiu/mspaint/main/main.lua"))()
   end,
})

-- // 8. CATEGORIA: ADOPT ME //
local TabAm = Window:CreateTab("🐶 Adopt Me")
TabAm:CreateButton({
   Name = "Null Hub (Auto Farm Pets)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Nullware-Official/v2/main/AdoptMe.lua"))()
   end,
})

-- // 9. CATEGORIA: BLADE BALL //
local TabBb = Window:CreateTab("⚔️ Blade Ball")
TabBb:CreateButton({
   Name = "FFJ Hub (Auto Parry)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/Scripts/BladeBall.lua"))()
   end,
})

-- // 10. CATEGORIA: BEDWARS //
local TabBed = Window:CreateTab("🛏️ Bedwars")
TabBed:CreateButton({
   Name = "Vape V4 (O Deus do PvP)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/7GrandDadPGN/VapeV4ForRoblox/main/NewMainScript.lua"))()
   end,
})

-- // 11. CATEGORIA: PET SIMULATOR 99 //
local TabPs = Window:CreateTab("🐱 Pet Sim 99")
TabPs:CreateButton({
   Name = "Zap Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/ZapHub-Roblox/Main/main/PetSim99.lua"))()
   end,
})

-- // 12. CATEGORIA: ARSENAL/FPS //
local TabFps = Window:CreateTab("🔫 FPS/Arsenal")
TabFps:CreateButton({
   Name = "ThunderZ Aimbot",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/ThunderZHub/Main/main/Arsenal.lua"))()
   end,
})

-- // 13. CATEGORIA: MURDER MYSTERY 2 //
local TabMm2 = Window:CreateTab("🔪 Murder Mystery 2")
TabMm2:CreateButton({
   Name = "Vynixius Hub",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Loader.lua"))()
   end,
})

-- // 14. CATEGORIA: BEE SWARM SIM //
local TabBee = Window:CreateTab("🐝 Bee Swarm")
TabBee:CreateButton({
   Name = "Ape Hub (Auto Farm Honey)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/ApeHub/Main/main/BeeSwarm.lua"))()
   end,
})

-- // 15. CATEGORIA: UNIVERSAL (ADMIN) //
local TabUni = Window:CreateTab("🌍 Universal")
TabUni:CreateButton({
   Name = "Infinite Yield (Fly, Noclip, Speed)",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

Rayfield:Notify({Title = "KRONOS V30", Content = "15 Categorias Prontas!", Duration = 5})
