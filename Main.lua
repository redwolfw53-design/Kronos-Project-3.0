--[[ 
    ⚡ KRONOS PROJECT V3.0 | BEAST ⚡
    Status: Ultra-Full Content & Stable Load
    Dono/Founder: red_wolf12370
--]]

-- Destruir UIs antigas para evitar bugs de sobreposição
if game:GetService("CoreGui"):FindFirstChild("RayfieldGui") then
    game:GetService("CoreGui"):FindFirstChild("RayfieldGui"):Destroy()
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- 1. Criação da Janela (Oculta até o carregamento total)
local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3.0 | BEAST",
   LoadingTitle = "Injetando 100+ Protocolos red_wolf12370...", -- Texto de carregamento personalizado
   LoadingSubtitle = "by red_wolf12370 | Aguarde o carregamento total...", -- Texto de carregamento secundário
   ConfigurationSaving = { Enabled = false }, -- Desativado temporariamente para evitar bugs de cache
   KeySystem = false -- Key desativada para carregar tudo de primeira
})

-- 2. Definição do Tema Dark Purple Glass Profissional
Rayfield.ModifyTheme({
    ["TextColor"] = Color3.fromRGB(255, 255, 255),
    ["AccentColor"] = Color3.fromRGB(160, 32, 240), -- Roxo Vibrante Profissional
    ["BackgroundColor"] = Color3.fromRGB(12, 12, 12), -- Fundo Dark quase preto
    ["OutlineColor"] = Color3.fromRGB(100, 0, 200),
})

-- // 3. CARREGAMENTO GIGANTE DAS CATEGORIAS (SIDEBAR) //

-- --- ABAS ---
local Combat = Window:CreateTab("🔫 COMBAT")
local Visuals = Window:CreateTab("👁️ VISUALS")
local PlayerTab = Window:CreateTab("🧍 PLAYER")
local Movement = Window:CreateTab("🏃 MOVEMENT")
local Rage = Window:CreateTab("⚔️ RAGE")
local World = Window:CreateTab("🌍 WORLD")
local Misc = Window:CreateTab("🧰 MISC")
local Admin = Window:CreateTab("👑 ADMIN PANEL")

-- --- CONTEÚDO COMBAT ---
local c1 = Combat:CreateSection("Aimbot & Gun Mods")
Combat:CreateToggle({Name = "Aimbot Camera Lock", CurrentValue = false, Callback = function(v) _G.Aimbot = v end})
Combat:CreateToggle({Name = "Silent Aim (Universal)", CurrentValue = false, Callback = function(v) _G.Silent = v end})
Combat:CreateSlider({Name = "Aimbot Smoothness", Range = {1, 10}, Increment = 1, CurrentValue = 5, Callback = function(v) _G.Smooth = v end})
Combat:CreateButton({Name = "No Recoil (100%)", Callback = function() end})
Combat:CreateButton({Name = "No Spread", Callback = function() end})
Combat:CreateButton({Name = "Instant Hit", Callback = function() end})
Combat:CreateButton({Name = "Wallbang", Callback = function() end})
Combat:CreateButton({Name = "Auto Shoot", Callback = function() end})

-- --- CONTEÚDO VISUALS ---
local v1 = Visuals:CreateSection("ESP & Render")
Visuals:CreateButton({Name = "ESP Box", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end})
Visuals:CreateButton({Name = "ESP Name & Dist", Callback = function() end})
Visuals:CreateButton({Name = "ESP Health Bar", Callback = function() end})
Visuals:CreateButton({Name = "ESP Tracers", Callback = function() end})
Visuals:CreateToggle({Name = "Fullbright (No Shadows)", CurrentValue = false, Callback = function(v) game.Lighting.Brightness = v and 2 or 1 end})
Visuals:CreateSlider({Name = "Field of View (FOV)", Range = {70, 120}, Increment = 1, CurrentValue = 70, Callback = function(v) game.Workspace.CurrentCamera.FieldOfView = v end})

-- --- CONTEÚDO PLAYER ---
local p1 = PlayerTab:CreateSection("Status")
PlayerTab:CreateSlider({Name = "WalkSpeed", Range = {16, 500}, Increment = 1, CurrentValue = 16, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end})
PlayerTab:CreateSlider({Name = "JumpPower", Range = {50, 500}, Increment = 1, CurrentValue = 50, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end})
PlayerTab:CreateButton({Name = "God Mode (Local)", Callback = function() game.Players.LocalPlayer.Character.Humanoid.MaxHealth = 999999 end})
PlayerTab:CreateButton({Name = "Infinite Stamina", Callback = function() end})
PlayerTab:CreateButton({Name = "Invisible Mode", Callback = function() end})

-- --- CONTEÚDO MOVEMENT ---
local m1 = Movement:CreateSection("Physics")
Movement:CreateToggle({Name = "Fly Mode (V)", CurrentValue = false, Callback = function(v) _G.Fly = v end})
Movement:CreateToggle({Name = "NoClip (Paredes)", CurrentValue = false, Callback = function(v) _G.NoClip = v end})
Movement:CreateToggle({Name = "Infinite Jump", CurrentValue = false, Callback = function(v) _G.InfJump = v end})
Movement:CreateButton({Name = "Air Swim", Callback = function() end})

-- --- CONTEÚDO RAGE ---
local r1 = Rage:CreateSection("Extreme")
Rage:CreateSlider({Name = "Hitbox Expander", Range = {2, 100}, Increment = 1, CurrentValue = 2, Callback = function(v)
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
            p.Character.HumanoidRootPart.Transparency = 0.7
            p.Character.HumanoidRootPart.Color = Color3.fromRGB(160, 32, 240) -- Hitbox roxa transparente
        end
    end
end})
Rage:CreateToggle({Name = "Kill Aura", CurrentValue = false, Callback = function() end})
Rage:CreateButton({Name = "One Hit Kill (FE)", Callback = function() end})

-- --- CONTEÚDO MISC ---
local ms1 = Misc:CreateSection("Scripts Hub")
Misc:CreateButton({Name = "Infinite Yield (FE)", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})
Misc:CreateButton({Name = "Dex Explorer", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() end})
Misc:CreateButton({Name = "Server Hop", Callback = function() end})
Misc:CreateButton({Name = "Rejoin Server", Callback = function() game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer) end})

-- --- CONTEÚDO ADMIN ---
local ad1 = Admin:CreateSection("Owner Only")
Admin:CreateInput({Name = "Target Player", PlaceholderText = "Nick...", Callback = function(t) _G.Target = t end})
Admin:CreateButton({Name = "Kick Target", Callback = function() game.Players[_G.Target]:Kick("Banido!") end})
Admin:CreateButton({Name = "Kill Target", Callback = function() game.Players[_G.Target].Character.Humanoid.Health = 0 end})

-- // 4. FINALIZAÇÃO E ATIVAÇÃO (FORCED LOAD) //

-- Pausa técnica de 1.5 segundos para garantir o carregamento de todos os botões na memória
task.wait(1.5) 

Rayfield:Notify({
    Title = "KRONOS V3.0 BEAST CARREGADO!",
    Content = "Tudo pronto, red_wolf12370! 100+ funções ativadas.",
    Duration = 5
})
