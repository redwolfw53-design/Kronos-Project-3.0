--[[ 
    ⚡ KRONOS PROJECT V3.0 | THE ULTRA EXECUTOR ⚡
    Founder: red_wolf12370
    Status: Owner/Admin Access Integrated
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Player = game.Players.LocalPlayer
local MyNick = "red_wolf12370"
local isAdmin = (Player.Name == MyNick)

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3.0 | ULTRA",
   LoadingTitle = "Injetando 50+ Módulos...",
   LoadingSubtitle = "Bem-vindo, " .. Player.Name,
   ConfigurationSaving = { Enabled = true, FolderName = "KronosConfig" },
   KeySystem = not isAdmin, 
   KeySettings = {
      Title = "Acesso Requerido",
      Subtitle = "Key: WOLF2025",
      Note = "O Dono entra direto!",
      FileName = "KronosKey",
      SaveKey = true,
      Key = {"WOLF2025"} 
   }
})

-- // 📂 DEFINIÇÃO DAS ABAS //
local CombatTab = Window:CreateTab("🔫 COMBAT")
local VisualsTab = Window:CreateTab("👁️ VISUALS")
local PlayerTab = Window:CreateTab("🧍 PLAYER")
local WorldTab = Window:CreateTab("🌍 WORLD")
local MovementTab = Window:CreateTab("🏃 MOVEMENT")
local RageTab = Window:CreateTab("⚔️ RAGE")
local MiscTab = Window:CreateTab("🧰 MISC")
local CreditsTab = Window:CreateTab("📝 CREDITS")
local SettingsTab = Window:CreateTab("⚙️ SETTINGS")

-- // 👑 ABA SECRETA: ADMIN PANEL (SÓ PARA VOCÊ) //
if isAdmin then
    local AdminTab = Window:CreateTab("👑 ADMIN PANEL")
    local TargetPlayer = ""
    AdminTab:CreateSection("Controle de Jogadores")
    AdminTab:CreateInput({Name = "Nick do Alvo", PlaceholderText = "Nick...", Callback = function(t) TargetPlayer = t end})
    AdminTab:CreateButton({Name = "❄️ FREEZE", Callback = function() 
        local p = game.Players:FindFirstChild(TargetPlayer)
        if p and p.Character then p.Character.HumanoidRootPart.Anchored = true end 
    end})
    AdminTab:CreateButton({Name = "🔥 UNFREEZE", Callback = function() 
        local p = game.Players:FindFirstChild(TargetPlayer)
        if p and p.Character then p.Character.HumanoidRootPart.Anchored = false end 
    end})
    AdminTab:CreateButton({Name = "🔨 KICK", Callback = function() 
        local p = game.Players:FindFirstChild(TargetPlayer)
        if p then p:Kick("Banido pelo Dono do Kronos!") end 
    end})
    AdminTab:CreateSection("Server Info")
    AdminTab:CreateButton({Name = "Analisar Key Users", Callback = function() print("Analisando logs...") end})
end

-- // 🔫 COMBAT //
CombatTab:CreateToggle({Name = "Aimbot", CurrentValue = false, Callback = function(v) _G.Aimbot = v end})
CombatTab:CreateToggle({Name = "Silent Aim", CurrentValue = false, Callback = function(v) _G.Silent = v end})
CombatTab:CreateButton({Name = "Instant Kill", Callback = function() print("Ativado") end})

-- // 👁️ VISUALS //
VisualsTab:CreateButton({Name = "ESP Box (Universal)", Callback = function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))()
end})
VisualsTab:CreateToggle({Name = "Fullbright", CurrentValue = false, Callback = function(v)
    if v then game.Lighting.Brightness = 2; game.Lighting.GlobalShadows = false
    else game.Lighting.Brightness = 1; game.Lighting.GlobalShadows = true end
end})

-- // 🧍 PLAYER //
PlayerTab:CreateSlider({Name = "Speed Hack", Range = {16, 500}, Increment = 1, CurrentValue = 16, Callback = function(v) Player.Character.Humanoid.WalkSpeed = v end})
PlayerTab:CreateSlider({Name = "Jump Power", Range = {50, 500}, Increment = 1, CurrentValue = 50, Callback = function(v) Player.Character.Humanoid.JumpPower = v end})
PlayerTab:CreateToggle({Name = "Noclip", CurrentValue = false, Callback = function(v) _G.NoClip = v end})

-- // 🏃 MOVEMENT //
MovementTab:CreateToggle({Name = "Infinite Jump", CurrentValue = false, Callback = function(v) _G.InfJump = v end})
MovementTab:CreateButton({Name = "Fly (Voo)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))() end})

-- // ⚔️ RAGE //
RageTab:CreateSection("CUIDADO: Funções Arriscadas")
RageTab:CreateSlider({Name = "Hitbox Expander", Range = {2, 50}, Increment = 1, CurrentValue = 2, Callback = function(v) _G.HitSize = v end})

-- // 🧰 MISC //
MiscTab:CreateButton({Name = "Infinite Yield (Admin Script)", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})
MiscTab:CreateButton({Name = "FPS Booster", Callback = function() 
    local settings = settings(); settings.Network.IncomingReplicationLag = 0
    for i,v in pairs(game:GetDescendants()) do if v:IsA("BasePart") then v.Material = "SmoothPlastic" end end
end})

-- // 📝 CREDITS //
CreditsTab:CreateSection("KRONOS TEAM")
CreditsTab:CreateLabel("👑 Founder: " .. MyNick)
CreditsTab:CreateLabel("⭐ Status: Online & Verified")
CreditsTab:CreateButton({Name = "Copiar Discord", Callback = function() setclipboard("discord.gg/redwolf") end})

-- // ⚙️ SETTINGS //
SettingsTab:CreateButton({Name = "Destruir Menu", Callback = function() Rayfield:Destroy() end})

-- // 🚀 LOOPS E SISTEMAS DE FUNDO //
game:GetService("RunService").Stepped:Connect(function()
    if _G.NoClip then for _, v in pairs(Player.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end
end)

game:GetService("UserInputService").JumpRequest:Connect(function()
    if _G.InfJump then Player.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") end
end)

-- // BOTÃO FLUTUANTE //
local FloatingButton = Instance.new("ScreenGui")
local ToggleButton = Instance.new("ImageButton")
FloatingButton.Parent = game:GetService("CoreGui")
ToggleButton.Parent = FloatingButton
ToggleButton.BackgroundColor3 = Color3.fromRGB(120, 0, 200)
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Position = UDim2.new(0.05, 0, 0.4, 0)
ToggleButton.Draggable = true
local Corner = Instance.new("UICorner", ToggleButton)
Corner.CornerRadius = UDim.new(1, 0)
ToggleButton.MouseButton1Click:Connect(function()
    game:GetService("CoreGui").RayfieldGui.Main.Visible = not game:GetService("CoreGui").RayfieldGui.Main.Visible
end)

Rayfield:LoadConfiguration()
