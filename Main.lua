--[[ 
    ⚡ KRONOS PROJECT V3.0 | UNIVERSAL BEAST
    Dono: red_wolf12370 | Key: kronos55
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3.0",
   LoadingTitle = "Iniciando Kronos V3...",
   LoadingSubtitle = "by red_wolf12370",
   ConfigurationSaving = { Enabled = true, FolderName = "KronosData", FileName = "Config" },
   KeySystem = true,
   KeySettings = {
      Title = "KRONOS KEY SYSTEM",
      Subtitle = "Key: kronos55",
      Note = "Acesse nosso Discord para keys gratuitas",
      FileName = "KronosKey",
      SaveKey = true,
      Key = {"kronos55"}
   }
})

-- // ABAS //
local Combat = Window:CreateTab("🔫 Combat")
local Visuals = Window:CreateTab("👁️ Visuals")
local PlayerTab = Window:CreateTab("🧍 Player")
local Rage = Window:CreateTab("⚔️ Rage")
local World = Window:CreateTab("🌍 World")
local Hubs = Window:CreateTab("🌀 Hubs")
local Credits = Window:CreateTab("📝 Credits")

-- // 1. COMBAT //
Combat:CreateButton({Name = "Aimbot Universal", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))() end})
Combat:CreateButton({Name = "Silent Aim", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))() end})
Combat:CreateToggle({Name = "Auto Clicker", CurrentValue = false, Callback = function(v) _G.Clicker = v end})

-- // 2. VISUALS //
Visuals:CreateButton({Name = "ESP Box", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end})
Visuals:CreateToggle({Name = "Fullbright", CurrentValue = false, Callback = function(v) game.Lighting.Brightness = v and 2 or 1 end})
Visuals:CreateSlider({Name = "Field of View", Range = {70, 120}, Increment = 1, CurrentValue = 70, Callback = function(v) game.Workspace.CurrentCamera.FieldOfView = v end})

-- // 3. PLAYER //
PlayerTab:CreateSlider({Name = "Velocidade", Range = {16, 500}, Increment = 1, CurrentValue = 16, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end})
PlayerTab:CreateSlider({Name = "Pulo", Range = {50, 500}, Increment = 1, CurrentValue = 50, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end})
PlayerTab:CreateButton({Name = "Anti-AFK", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/KazeOnit/AntiAFK/main/Script"))() end})
PlayerTab:CreateButton({Name = "Infinite Jump", Callback = function() end}) -- Lógica interna

-- // 4. RAGE //
Rage:CreateSlider({Name = "Hitbox Expand", Range = {2, 100}, Increment = 1, CurrentValue = 2, Callback = function(v)
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character:FindFirstChild("HumanoidRootPart") then
            p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
            p.Character.HumanoidRootPart.Transparency = 0.7
        end
    end
end})
Rage:CreateButton({Name = "Fling All", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/Roblox-Scripts/main/GhostHub"))() end})

-- // 5. WORLD //
World:CreateButton({Name = "Remover Fog", Callback = function() game.Lighting.FogEnd = 999999 end})
World:CreateButton({Name = "FPS Boost", Callback = function() end})

-- // 6. HUBS //
Hubs:CreateButton({Name = "Infinite Yield", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})
Hubs:CreateButton({Name = "Dex Explorer", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() end})
Hubs:CreateButton({Name = "Fly GUI V3", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))() end})

-- // 7. CREDITS //
Credits:CreateLabel("Dono: red_wolf12370")
Credits:CreateButton({Name = "Copiar Discord", Callback = function() setclipboard("discord.gg/redwolf") end})

Rayfield:LoadConfiguration()
