--[[ 
    ⚡ KRONOS PROJECT V3.0 | PERFORMANCE EDITION
    Foco: Estabilidade e Carregamento Forçado
    Dono: red_wolf12370
--]]

-- Limpeza total de memória antes de iniciar
if game:GetService("CoreGui"):FindFirstChild("RayfieldGui") then
    game:GetService("CoreGui"):FindFirstChild("RayfieldGui"):Destroy()
end

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Janela com cores sólidas (Mais leve que o transparente)
local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3.0 | BEAST",
   LoadingTitle = "Carregando red_wolf12370 HUB...",
   LoadingSubtitle = "Modo Performance Ativado",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false 
})

-- TEMA ROXO ESCURO SÓLIDO (Evita o bug da tela preta)
Rayfield.ModifyTheme({
    ["TextColor"] = Color3.fromRGB(255, 255, 255),
    ["AccentColor"] = Color3.fromRGB(130, 0, 255), -- Roxo Neon
    ["BackgroundColor"] = Color3.fromRGB(20, 20, 20), -- Cinza muito escuro sólido
    ["OutlineColor"] = Color3.fromRGB(60, 60, 60), -- Bordas visíveis
})

-- --- CATEGORIAS ---
local Combat = Window:CreateTab("🔫 COMBAT")
local Visuals = Window:CreateTab("👁️ VISUALS")
local PlayerTab = Window:CreateTab("🧍 PLAYER")
local Movement = Window:CreateTab("🏃 MOVEMENT")
local Rage = Window:CreateTab("⚔️ RAGE")
local Misc = Window:CreateTab("🧰 MISC")

-- --- CONTEÚDO COMBAT ---
Combat:CreateSection("Aimbot & Gun Settings")
Combat:CreateToggle({Name = "Aimbot", CurrentValue = false, Callback = function(v) _G.Aimbot = v end})
Combat:CreateToggle({Name = "Silent Aim", CurrentValue = false, Callback = function(v) _G.Silent = v end})
Combat:CreateButton({Name = "No Recoil", Callback = function() end})
Combat:CreateButton({Name = "No Spread", Callback = function() end})

-- --- CONTEÚDO VISUALS ---
Visuals:CreateSection("ESP")
Visuals:CreateButton({Name = "Ativar ESP (Universal)", Callback = function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() 
end})
Visuals:CreateToggle({Name = "Fullbright", CurrentValue = false, Callback = function(v) game.Lighting.Brightness = v and 2 or 1 end})

-- --- CONTEÚDO PLAYER ---
PlayerTab:CreateSection("Character Mod")
PlayerTab:CreateSlider({Name = "Speed", Range = {16, 500}, Increment = 1, CurrentValue = 16, Callback = function(v) 
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v 
end})
PlayerTab:CreateSlider({Name = "Jump", Range = {50, 500}, Increment = 1, CurrentValue = 50, Callback = function(v) 
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v 
end})

-- --- CONTEÚDO RAGE ---
Rage:CreateSection("Heavy Exploits")
Rage:CreateSlider({Name = "Hitbox Expander", Range = {2, 100}, Increment = 1, CurrentValue = 2, Callback = function(v)
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
            p.Character.HumanoidRootPart.Transparency = 0.7
            p.Character.HumanoidRootPart.Color = Color3.fromRGB(130, 0, 255)
        end
    end
end})

-- --- CONTEÚDO MISC ---
Misc:CreateSection("Utilitários")
Misc:CreateButton({Name = "Infinite Yield", Callback = function() 
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() 
end})
Misc:CreateButton({Name = "Rejoin Server", Callback = function() 
    game:GetService("TeleportService"):Teleport(game.PlaceId, game.Players.LocalPlayer) 
end})

-- Comando Final de Segurança
task.wait(0.5)
Rayfield:Notify({
    Title = "KRONOS CARREGADO",
    Content = "Modo Estável Ativado!",
    Duration = 3
})
