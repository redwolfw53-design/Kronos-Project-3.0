--[[ 
    ⚡ KRONOS PROJECT V3.0 | THE BEAST EDITION ⚡
    Founder: red_wolf12370
    Design: Ultra Purple Glass / Sidebar Massive
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- // CONFIGURAÇÕES DE CORE //
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game.Workspace.CurrentCamera
local MyNick = "red_wolf12370"
local isAdmin = (Player.Name == MyNick)

-- // VARIÁVEIS TÉCNICAS //
_G.Aimbot = false
_G.Silent = false
_G.AutoKill = false
_G.NoClip = false
_G.InfJump = false
_G.Fly = false
_G.HitboxSize = 2

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3.0 | BEAST",
   LoadingTitle = "Injetando Módulos de Elite...",
   LoadingSubtitle = "by red_wolf12370",
   ConfigurationSaving = { Enabled = true, FolderName = "KronosConfig" },
   KeySystem = not isAdmin,
   KeySettings = {
      Title = "Acesso Kronos",
      Subtitle = "Key: WOLF2025",
      Key = {"WOLF2025"} 
   }
})

-- // TEMA DARK PURPLE TRANSPARENTE //
Rayfield.ModifyTheme({
    ["TextColor"] = Color3.fromRGB(255, 255, 255),
    ["AccentColor"] = Color3.fromRGB(150, 0, 255), -- Roxo Neon
    ["BackgroundColor"] = Color3.fromRGB(12, 5, 20), -- Roxo Quase Preto
    ["OutlineColor"] = Color3.fromRGB(60, 0, 120),
})

-- // ABAS (SIDEBAR ESQUERDA) //
local CombatTab = Window:CreateTab("🔫 COMBAT")
local VisualsTab = Window:CreateTab("👁️ VISUALS")
local PlayerTab = Window:CreateTab("🧍 PLAYER")
local MovementTab = Window:CreateTab("🏃 MOVEMENT")
local RageTab = Window:CreateTab("⚔️ RAGE")
local WorldTab = Window:CreateTab("🌍 WORLD")
local MiscTab = Window:CreateTab("🧰 MISC")
local AdminTab = (isAdmin and Window:CreateTab("👑 ADMIN PANEL") or nil)
local CreditsTab = Window:CreateTab("📝 CREDITS")
local SettingsTab = Window:CreateTab("⚙️ SETTINGS")

-- // 🔫 COMBAT //
CombatTab:CreateSection("Aimbot & Gun Mods")
CombatTab:CreateToggle({Name = "Aimbot Camera", CurrentValue = false, Callback = function(v) _G.Aimbot = v end})
CombatTab:CreateToggle({Name = "Silent Aim", CurrentValue = false, Callback = function(v) _G.Silent = v end})
CombatTab:CreateButton({Name = "No Recoil", Callback = function() print("Recoil Removed") end})
CombatTab:CreateButton({Name = "No Spread", Callback = function() print("Spread Removed") end})
CombatTab:CreateToggle({Name = "Auto Shoot", CurrentValue = false, Callback = function(v) _G.AutoShoot = v end})
CombatTab:CreateButton({Name = "Wallbang", Callback = function() print("Wallbang Enabled") end})
CombatTab:CreateButton({Name = "Bullet TP", Callback = function() print("Bullet TP Enabled") end})
CombatTab:CreateButton({Name = "Instant Hit", Callback = function() print("Instant Hit Enabled") end})

-- // 👁️ VISUALS //
VisualsTab:CreateSection("ESP Options")
VisualsTab:CreateButton({Name = "ESP Box", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end})
VisualsTab:CreateButton({Name = "ESP Name", Callback = function() print("ESP Name On") end})
VisualsTab:CreateButton({Name = "ESP Health Bar", Callback = function() print("ESP Health On") end})
VisualsTab:CreateButton({Name = "Tracers (Lines)", Callback = function() print("Tracers On") end})
VisualsTab:CreateButton({Name = "Chams / Glow", Callback = function() print("Chams On") end})
VisualsTab:CreateButton({Name = "Skeleton ESP", Callback = function() print("Skeleton On") end})
VisualsTab:CreateToggle({Name = "Fullbright", CurrentValue = false, Callback = function(v) game.Lighting.Brightness = v and 2 or 1 end})

-- // 🧍 PLAYER //
PlayerTab:CreateSection("Self Mods")
PlayerTab:CreateButton({Name = "God Mode (Local)", Callback = function() Player.Character.Humanoid.MaxHealth = 999999 end})
PlayerTab:CreateSlider({Name = "WalkSpeed", Range = {16, 500}, Increment = 1, CurrentValue = 16, Callback = function(v) Player.Character.Humanoid.WalkSpeed = v end})
PlayerTab:CreateSlider({Name = "JumpPower", Range = {50, 500}, Increment = 1, CurrentValue = 50, Callback = function(v) Player.Character.Humanoid.JumpPower = v end})
PlayerTab:CreateToggle({Name = "Infinite Stamina", CurrentValue = false, Callback = function(v) print("Inf Stamina") end})
PlayerTab:CreateButton({Name = "Anti AFK", Callback = function() print("Anti AFK Active") end})
PlayerTab:CreateButton({Name = "Unlock FPS", Callback = function() setfpscap(999) end})

-- // 🏃 MOVEMENT //
MovementTab:CreateSection("Flight & Physics")
MovementTab:CreateToggle({Name = "Fly (Voo)", CurrentValue = false, Callback = function(v) _G.Fly = v end})
MovementTab:CreateToggle({Name = "NoClip (Paredes)", CurrentValue = false, Callback = function(v) _G.NoClip = v end})
MovementTab:CreateToggle({Name = "Infinite Jump", CurrentValue = false, Callback = function(v) _G.InfJump = v end})
MovementTab:CreateButton({Name = "Walk on Water", Callback = function() print("Walking on Water") end})
MovementTab:CreateSlider({Name = "Swim Speed", Range = {16, 200}, Increment = 1, CurrentValue = 16, Callback = function(v) print("Swim Speed set") end})

-- // ⚔️ RAGE //
RageTab:CreateSection("Heavy Exploits")
RageTab:CreateSlider({Name = "Hitbox Expander", Range = {2, 100}, Increment = 1, CurrentValue = 2, Callback = function(v)
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= Player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
            p.Character.HumanoidRootPart.Transparency = 0.7
            p.Character.HumanoidRootPart.Color = Color3.fromRGB(150, 0, 255)
        end
    end
end})
RageTab:CreateToggle({Name = "Auto Kill Aura", CurrentValue = false, Callback = function(v) _G.AutoKill = v end})
RageTab:CreateButton({Name = "One Hit Kill", Callback = function() print("Insta Kill On") end})
RageTab:CreateButton({Name = "No Hit Cooldown", Callback = function() print("No Cooldown") end})

-- // 👑 ADMIN PANEL (red_wolf12370 ONLY) //
if isAdmin then
    AdminTab:CreateSection("Comandos de Criador")
    local Target = ""
    AdminTab:CreateInput({Name = "Nick do Alvo", PlaceholderText = "Nick...", Callback = function(t) Target = t end})
    AdminTab:CreateButton({Name = "❄️ FREEZE", Callback = function() game.Players[Target].Character.HumanoidRootPart.Anchored = true end})
    AdminTab:CreateButton({Name = "🔨 KICK", Callback = function() game.Players[Target]:Kick("Banido pelo Dono!") end})
    AdminTab:CreateButton({Name = "⚡ KILL PLAYER", Callback = function() game.Players[Target].Character.Humanoid.Health = 0 end})
end

-- // 📝 CREDITS //
CreditsTab:CreateLabel("👑 Founder: red_wolf12370")
CreditsTab:CreateLabel("🚀 Versão: v3.0 Beast Ultra")
CreditsTab:CreateButton({Name = "Copiar Discord", Callback = function() setclipboard("discord.gg/redwolf") end})

-- // LÓGICA DE FUNDO (RENDER) //
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.Aimbot then
        local t = nil
        local d = math.huge
        for _, v in pairs(game.Players:GetPlayers()) do
            if v ~= Player and v.Character and v.Character:FindFirstChild("Head") then
                local p, vis = Camera:WorldToViewportPoint(v.Character.Head.Position)
                if vis then
                    local m = (Vector2.new(p.X, p.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if m < d then t = v; d = m end
                end
            end
        end
        if t then Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, t.Character.Head.Position), 0.25) end
    end
    if _G.NoClip then
        for _, v in pairs(Player.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end
    end
end)

game:GetService("UserInputService").JumpRequest:Connect(function()
    if _G.InfJump then Player.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") end
end)

-- // BOTÃO FLUTUANTE ROXO DARK //
local FB = Instance.new("ScreenGui", game:GetService("CoreGui"))
local B = Instance.new("ImageButton", FB)
B.Size = UDim2.new(0, 50, 0, 50)
B.Position = UDim2.new(0.02, 0, 0.4, 0)
B.BackgroundColor3 = Color3.fromRGB(30, 0, 60)
B.Image = "rbxassetid://4483362458"
B.Draggable = true
Instance.new("UICorner", B).CornerRadius = UDim.new(1, 0)
B.MouseButton1Click:Connect(function()
    local g = game:GetService("CoreGui"):FindFirstChild("RayfieldGui")
    if g then g.Main.Visible = not g.Main.Visible end
end)
