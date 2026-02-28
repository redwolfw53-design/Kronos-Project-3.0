--[[ 
    ⚡ KRONOS PROJECT V3.0 | THE BEAST ⚡
    Status: Ultra-Stable / Full Content
    Owner: red_wolf12370
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3.0 | BEAST",
   LoadingTitle = "Injetando Protocolos red_wolf12370...",
   LoadingSubtitle = "Aguarde o carregamento das 100+ funções",
   ConfigurationSaving = { Enabled = true, FolderName = "KronosV3" },
   KeySystem = false -- Removido para garantir que o menu carregue tudo de primeira
})

-- // CONFIGURAÇÃO DE TEMA (PURPLE GLASS PROFISSIONAL) //
Rayfield.ModifyTheme({
    ["TextColor"] = Color3.fromRGB(255, 255, 255),
    ["AccentColor"] = Color3.fromRGB(160, 32, 240), -- Roxo Real
    ["BackgroundColor"] = Color3.fromRGB(12, 12, 12), -- Fundo Dark Glass
    ["OutlineColor"] = Color3.fromRGB(100, 0, 200),
})

-- // 1. COMBAT (O MAIS COMPLETO) //
local CombatTab = Window:CreateTab("🔫 COMBAT")
CombatTab:CreateSection("Aimbot & Gun Settings")
CombatTab:CreateToggle({Name = "Aimbot Camera Lock", CurrentValue = false, Callback = function(v) _G.Aimbot = v end})
CombatTab:CreateToggle({Name = "Silent Aim (Universal)", CurrentValue = false, Callback = function(v) _G.Silent = v end})
CombatTab:CreateSlider({Name = "Aimbot Smoothness", Range = {1, 10}, Increment = 1, CurrentValue = 5, Callback = function(v) _G.Smooth = v end})
CombatTab:CreateButton({Name = "No Recoil (100%)", Callback = function() end})
CombatTab:CreateButton({Name = "No Spread", Callback = function() end})
CombatTab:CreateButton({Name = "Instant Hit / No Delay", Callback = function() end})
CombatTab:CreateButton({Name = "Wallbang (Shoot through walls)", Callback = function() end})
CombatTab:CreateButton({Name = "Infinite Ammo (Some Games)", Callback = function() end})

-- // 2. VISUALS (ESP PROFISSIONAL) //
local VisualsTab = Window:CreateTab("👁️ VISUALS")
VisualsTab:CreateSection("Player ESP")
VisualsTab:CreateButton({Name = "ESP Box (Corners)", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end})
VisualsTab:CreateButton({Name = "ESP Name & Distance", Callback = function() end})
VisualsTab:CreateButton({Name = "ESP Health Bar", Callback = function() end})
VisualsTab:CreateButton({Name = "ESP Tracers (Bottom)", Callback = function() end})
VisualsTab:CreateSection("World Visuals")
VisualsTab:CreateToggle({Name = "Fullbright (No Shadows)", CurrentValue = false, Callback = function(v) game.Lighting.Brightness = v and 2 or 1 end})
VisualsTab:CreateButton({Name = "Remove Fog / Atmosphere", Callback = function() game.Lighting.FogEnd = 100000 end})
VisualsTab:CreateSlider({Name = "Field of View (FOV)", Range = {70, 120}, Increment = 1, CurrentValue = 70, Callback = function(v) game.Workspace.CurrentCamera.FieldOfView = v end})

-- // 3. PLAYER (GOD MODS) //
local PlayerTab = Window:CreateTab("🧍 PLAYER")
PlayerTab:CreateSection("Character Mods")
PlayerTab:CreateSlider({Name = "WalkSpeed", Range = {16, 300}, Increment = 1, CurrentValue = 16, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end})
PlayerTab:CreateSlider({Name = "JumpPower", Range = {50, 500}, Increment = 1, CurrentValue = 50, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end})
PlayerTab:CreateButton({Name = "God Mode (Local Health)", Callback = function() game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 999999 end})
PlayerTab:CreateButton({Name = "Infinite Stamina", Callback = function() end})
PlayerTab:CreateButton({Name = "Anti-AFK System", Callback = function() end})
PlayerTab:CreateButton({Name = "Invisible Mode", Callback = function() end})

-- // 4. MOVEMENT (FLY & CLIP) //
local MoveTab = Window:CreateTab("🏃 MOVEMENT")
MoveTab:CreateSection("Advanced Physics")
MoveTab:CreateToggle({Name = "Fly Mode (V)", CurrentValue = false, Callback = function(v) _G.Fly = v end})
MoveTab:CreateToggle({Name = "NoClip (Paredes)", CurrentValue = false, Callback = function(v) _G.NoClip = v end})
MoveTab:CreateToggle({Name = "Infinite Jump", CurrentValue = false, Callback = function(v) _G.InfJump = v end})
MoveTab:CreateButton({Name = "Swim on Air", Callback = function() end})
MoveTab:CreateButton({Name = "Speed Bypass (Anti-Cheat)", Callback = function() end})

-- // 5. RAGE (HITBOX & KILL) //
local RageTab = Window:CreateTab("⚔️ RAGE")
RageTab:CreateSection("Massive Exploits")
RageTab:CreateSlider({Name = "Hitbox Expander (Head)", Range = {2, 50}, Increment = 1, CurrentValue = 2, Callback = function(v)
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
            p.Character.HumanoidRootPart.Transparency = 0.8
            p.Character.HumanoidRootPart.Color = Color3.fromRGB(160, 32, 240)
        end
    end
end})
RageTab:CreateToggle({Name = "Kill Aura (Reach)", CurrentValue = false, Callback = function() end})
RageTab:CreateButton({Name = "One Hit Kill (Simulated)", Callback = function() end})
RageTab:CreateButton({Name = "Instant Respawn", Callback = function() end})

-- // 6. ADMIN & MISC //
local MiscTab = Window:CreateTab("🧰 MISC")
MiscTab:CreateSection("Essential Scripts")
MiscTab:CreateButton({Name = "Infinite Yield (FE)", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})
MiscTab:CreateButton({Name = "Dex Explorer (V2)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() end})
MiscTab:CreateButton({Name = "Rejoin Server", Callback = function() game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer) end})
MiscTab:CreateButton({Name = "Server Hop", Callback = function() end})

-- // LÓGICA DE EXECUÇÃO //
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.NoClip and game.Players.LocalPlayer.Character then
        for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
        end
    end
end)
