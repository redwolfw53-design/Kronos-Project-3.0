--[[ 
    ⚡ KRONOS PROJECT V3.0 | FIXED BEAST
    Dono: red_wolf12370
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3.0 | BEAST",
   LoadingTitle = "Carregando Protocolos...",
   LoadingSubtitle = "by red_wolf12370",
   ConfigurationSaving = { Enabled = true, FolderName = "KronosConfig" },
   KeySystem = false -- Desativado para testar o carregamento rápido
})

-- // TEMA PURPLE GLASS //
Rayfield.ModifyTheme({
    ["TextColor"] = Color3.fromRGB(255, 255, 255),
    ["AccentColor"] = Color3.fromRGB(150, 0, 255),
    ["BackgroundColor"] = Color3.fromRGB(15, 15, 15), -- Fundo Dark
})

-- // CATEGORIAS //
local CombatTab = Window:CreateTab("🔫 COMBAT", 4483362458)
local VisualsTab = Window:CreateTab("👁️ VISUALS", 4483362458)
local PlayerTab = Window:CreateTab("🧍 PLAYER", 4483362458)
local MovementTab = Window:CreateTab("🏃 MOVEMENT", 4483362458)
local RageTab = Window:CreateTab("⚔️ RAGE", 4483362458)
local MiscTab = Window:CreateTab("🧰 MISC", 4483362458)

-- // 🔫 COMBAT CONTENT //
CombatTab:CreateSection("Main Combat")
CombatTab:CreateToggle({Name = "Aimbot", CurrentValue = false, Callback = function(v) _G.Aimbot = v end})
CombatTab:CreateToggle({Name = "Silent Aim", CurrentValue = false, Callback = function(v) _G.Silent = v end})
CombatTab:CreateButton({Name = "No Recoil", Callback = function() end})
CombatTab:CreateButton({Name = "Auto Shoot", Callback = function() end})
CombatTab:CreateButton({Name = "Wallbang", Callback = function() end})

-- // 👁️ VISUALS CONTENT //
VisualsTab:CreateSection("ESP & Render")
VisualsTab:CreateButton({Name = "ESP Box", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end})
VisualsTab:CreateButton({Name = "ESP Name", Callback = function() end})
VisualsTab:CreateToggle({Name = "Fullbright", CurrentValue = false, Callback = function(v) game.Lighting.Brightness = v and 2 or 1 end})

-- // 🧍 PLAYER CONTENT //
PlayerTab:CreateSection("Status")
PlayerTab:CreateSlider({Name = "Speed", Range = {16, 500}, Increment = 1, CurrentValue = 16, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end})
PlayerTab:CreateSlider({Name = "Jump", Range = {50, 500}, Increment = 1, CurrentValue = 50, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end})

-- // 🏃 MOVEMENT CONTENT //
MovementTab:CreateSection("Physics")
MovementTab:CreateToggle({Name = "Fly", CurrentValue = false, Callback = function(v) _G.Fly = v end})
MovementTab:CreateToggle({Name = "NoClip", CurrentValue = false, Callback = function(v) _G.NoClip = v end})

-- // ⚔️ RAGE CONTENT //
RageTab:CreateSection("Heavy")
RageTab:CreateSlider({Name = "Hitbox Size", Range = {2, 100}, Increment = 1, CurrentValue = 2, Callback = function(v)
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
            p.Character.HumanoidRootPart.Transparency = 0.7
        end
    end
end})

-- // MISC //
MiscTab:CreateButton({Name = "Infinite Yield", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})
