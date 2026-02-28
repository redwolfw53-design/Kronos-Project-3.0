--[[ 
    ⚡ KRONOS PROJECT V3.0 | 99 NIGHTS STYLE
    Visual: Transparent Purple-Blue Glass
    Dono: red_wolf12370
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3.0 | BEAST",
   LoadingTitle = "Injetando Protocolos 99 Nights Style...",
   LoadingSubtitle = "by red_wolf12370",
   ConfigurationSaving = { Enabled = false },
   KeySystem = false 
})

-- // TEMA ROXO-AZUL TRANSPARENTE (ESTILO 99 NOITES) //
Rayfield.ModifyTheme({
    ["TextColor"] = Color3.fromRGB(255, 255, 255),
    ["AccentColor"] = Color3.fromRGB(138, 43, 226), -- Roxo Vibrante
    ["BackgroundColor"] = Color3.fromRGB(15, 0, 35), -- Fundo azulado ultra escuro (Glass effect)
    ["OutlineColor"] = Color3.fromRGB(0, 191, 255), -- Azul Elétrico (Borda)
})

-- // ABAS GIGANTES //
local Combat = Window:CreateTab("🔫 COMBAT")
local Visuals = Window:CreateTab("👁️ VISUALS")
local PlayerTab = Window:CreateTab("🧍 PLAYER")
local Movement = Window:CreateTab("🏃 MOVEMENT")
local Rage = Window:CreateTab("⚔️ RAGE")
local Admin = Window:CreateTab("👑 ADM")
local Credits = Window:CreateTab("📝 CREDITS")

-- --- COMBAT ---
Combat:CreateSection("Aimbot & Gun Mods")
Combat:CreateToggle({Name = "Aimbot Camera Lock", CurrentValue = false, Callback = function(v) _G.Aimbot = v end})
Combat:CreateToggle({Name = "Silent Aim", CurrentValue = false, Callback = function(v) _G.Silent = v end})
Combat:CreateButton({Name = "No Recoil", Callback = function() end})
Combat:CreateButton({Name = "No Spread", Callback = function() end})

-- --- VISUALS ---
Visuals:CreateSection("ESP & Render")
Visuals:CreateButton({Name = "Ativar ESP Box", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end})
Visuals:CreateToggle({Name = "Fullbright", CurrentValue = false, Callback = function(v) game.Lighting.Brightness = v and 2 or 1 end})

-- --- PLAYER ---
PlayerTab:CreateSection("Character Stats")
PlayerTab:CreateSlider({Name = "WalkSpeed", Range = {16, 500}, Increment = 1, CurrentValue = 16, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end})
PlayerTab:CreateSlider({Name = "JumpPower", Range = {50, 500}, Increment = 1, CurrentValue = 50, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end})

-- --- RAGE ---
Rage:CreateSection("Heavy Exploits")
Rage:CreateSlider({Name = "Hitbox Size", Range = {2, 100}, Increment = 1, CurrentValue = 2, Callback = function(v)
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
            p.Character.HumanoidRootPart.Transparency = 0.7
            p.Character.HumanoidRootPart.Color = Color3.fromRGB(138, 43, 226)
        end
    end
end})

-- --- ADM ---
Admin:CreateSection("Owner Panel")
Admin:CreateInput({Name = "Alvo", PlaceholderText = "Nick...", Callback = function(t) _G.Target = t end})
Admin:CreateButton({Name = "Kick Target", Callback = function() game.Players[_G.Target]:Kick("KRONOS!") end})

-- --- CREDITS ---
Credits:CreateSection("Info")
Credits:CreateLabel("Founder: red_wolf12370")
Credits:CreateButton({Name = "Copiar Discord", Callback = function() setclipboard("discord.gg/redwolf") end})

-- // BOTÃO FLUTUANTE (MINIMIZAR) COM TUA LOGO //
local FB = Instance.new("ScreenGui", game:GetService("CoreGui"))
local B = Instance.new("ImageButton", FB)
B.Size = UDim2.new(0, 55, 0, 55)
B.Position = UDim2.new(0.05, 0, 0.3, 0)
B.Image = "rbxassetid://1000002465" -- TUA LOGO
B.BackgroundTransparency = 0.2
B.BackgroundColor3 = Color3.fromRGB(15, 0, 35)
B.Draggable = true
Instance.new("UICorner", B).CornerRadius = UDim.new(1, 0)

B.MouseButton1Click:Connect(function()
    local g = game:GetService("CoreGui"):FindFirstChild("RayfieldGui")
    if g then g.Main.Visible = not g.Main.Visible end
end)
