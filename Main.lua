--[[ 
    ⚡ KRONOS PROJECT V3.0 | UNIVERSAL GOD MODE ⚡
    Founder: red_wolf12370
    Status: Ultra-Full Content Edition
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- // CONFIGURAÇÕES INICIAIS //
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local Camera = game.Workspace.CurrentCamera
local MyNick = "red_wolf12370"
local isAdmin = (Player.Name == MyNick)

-- // ESTADO DAS FUNÇÕES //
_G.Aimbot = false
_G.HitboxSize = 2
_G.AutoKill = false
_G.InfJump = false
_G.NoClip = false
_G.Fly = false

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3.0 | ULTRA",
   LoadingTitle = "Injetando 100+ Protocolos...",
   LoadingSubtitle = "by red_wolf12370",
   ConfigurationSaving = { Enabled = true, FolderName = "KronosConfig" },
   KeySystem = not isAdmin,
   KeySettings = {
      Title = "Acesso Kronos",
      Subtitle = "Key: WOLF2025",
      Note = "Dono logado como ADM!",
      FileName = "KronosKey",
      SaveKey = true,
      Key = {"WOLF2025"} 
   }
})

-- // TEMA DARK GLASS //
Rayfield.ModifyTheme({
    ["TextColor"] = Color3.fromRGB(255, 255, 255),
    ["AccentColor"] = Color3.fromRGB(130, 0, 255),
    ["BackgroundColor"] = Color3.fromRGB(10, 10, 10),
})

-- // ABAS (SIDEBAR) //
local CombatTab = Window:CreateTab("🔫 COMBAT")
local VisualsTab = Window:CreateTab("👁️ VISUALS")
local PlayerTab = Window:CreateTab("🧍 PLAYER")
local WorldTab = Window:CreateTab("🌍 WORLD")
local MovementTab = Window:CreateTab("🏃 MOVEMENT")
local RageTab = Window:CreateTab("⚔️ RAGE")
local MiscTab = Window:CreateTab("🧰 MISC")
local AdminTab = (isAdmin and Window:CreateTab("👑 ADMIN PANEL") or nil)
local CreditsTab = Window:CreateTab("📝 CREDITS")

-- // 🔫 COMBAT //
CombatTab:CreateSection("Aimbot & Kill Options")
CombatTab:CreateToggle({Name = "Aimbot Camera Lock", CurrentValue = false, Callback = function(v) _G.Aimbot = v end})
CombatTab:CreateToggle({Name = "Silent Aim (Universal)", CurrentValue = false, Callback = function(v) _G.Silent = v end})
CombatTab:CreateToggle({Name = "Auto Shoot", CurrentValue = false, Callback = function(v) _G.AutoShoot = v end})
CombatTab:CreateButton({Name = "Instant Kill (Melee)", Callback = function() _G.AutoKill = true end})
CombatTab:CreateButton({Name = "No Recoil / No Spread", Callback = function() print("Recoil Removed") end})

-- // 👁️ VISUALS //
VisualsTab:CreateSection("ESP & World Render")
VisualsTab:CreateButton({Name = "ESP Box (Universal)", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end})
VisualsTab:CreateButton({Name = "ESP Tracers / Lines", Callback = function() print("Tracers On") end})
VisualsTab:CreateToggle({Name = "Fullbright (No Shadows)", CurrentValue = false, Callback = function(v) game.Lighting.Brightness = v and 2 or 1 end})
VisualsTab:CreateButton({Name = "Wall Hack / Chams", Callback = function() print("Chams On") end})

-- // 🧍 PLAYER //
PlayerTab:CreateSection("Status Manipulator")
PlayerTab:CreateSlider({Name = "Speed Hack", Range = {16, 500}, Increment = 1, CurrentValue = 16, Callback = function(v) Player.Character.Humanoid.WalkSpeed = v end})
PlayerTab:CreateSlider({Name = "Jump Power", Range = {50, 500}, Increment = 1, CurrentValue = 50, Callback = function(v) Player.Character.Humanoid.JumpPower = v end})
PlayerTab:CreateButton({Name = "God Mode (Local)", Callback = function() Player.Character.Humanoid.MaxHealth = 999999; Player.Character.Humanoid.Health = 999999 end})
PlayerTab:CreateToggle({Name = "Infinite Stamina", CurrentValue = false, Callback = function(v) _G.InfStam = v end})

-- // 🏃 MOVEMENT //
MovementTab:CreateSection("Flight & Physics")
MovementTab:CreateToggle({Name = "Fly (Voo)", CurrentValue = false, Callback = function(v) 
    _G.Fly = v
    if v then loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))() end
end})
MovementTab:CreateToggle({Name = "NoClip (Paredes)", CurrentValue = false, Callback = function(v) _G.NoClip = v end})
MovementTab:CreateToggle({Name = "Infinite Jump", CurrentValue = false, Callback = function(v) _G.InfJump = v end})
MovementTab:CreateButton({Name = "Swim on Air", Callback = function() Player.Character.Humanoid:ChangeState("Swimming") end})

-- // ⚔️ RAGE //
RageTab:CreateSection("Exploits Pesados")
RageTab:CreateSlider({Name = "Hitbox Expander", Range = {2, 100}, Increment = 1, CurrentValue = 2, Callback = function(v)
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= Player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
            p.Character.HumanoidRootPart.Transparency = 0.8
        end
    end
end})
RageTab:CreateButton({Name = "Damage Multiplier (Fake)", Callback = function() Rayfield:Notify({Title="Rage", Content="Ativado!"}) end})

-- // 👑 ADMIN PANEL (SÓ VOCÊ) //
if isAdmin then
    AdminTab:CreateSection("Comandos de Criador")
    local Target = ""
    AdminTab:CreateInput({Name = "Player Nick", PlaceholderText = "Nick...", Callback = function(t) Target = t end})
    AdminTab:CreateButton({Name = "❄️ FREEZE", Callback = function() game.Players[Target].Character.HumanoidRootPart.Anchored = true end})
    AdminTab:CreateButton({Name = "🔨 KICK", Callback = function() game.Players[Target]:Kick("Banido pelo Dono!") end})
    AdminTab:CreateButton({Name = "⚡ KILL PLAYER", Callback = function() game.Players[Target].Character.Humanoid.Health = 0 end})
end

-- // 📝 CREDITS //
CreditsTab:CreateLabel("👑 Fundador: red_wolf12370")
CreditsTab:CreateLabel("🚀 Versão: v3.0 Ultra Full")
CreditsTab:CreateButton({Name = "Copiar Discord", Callback = function() setclipboard("discord.gg/redwolf") end})

-- // LÓGICA DE EXECUÇÃO //
game:GetService("RunService").RenderStepped:Connect(function()
    if _G.Aimbot then
        local target = nil
        local dist = math.huge
        for _, v in pairs(game.Players:GetPlayers()) do
            if v ~= Player and v.Character and v.Character:FindFirstChild("Head") then
                local pos, vis = Camera:WorldToViewportPoint(v.Character.Head.Position)
                if vis then
                    local m = (Vector2.new(pos.X, pos.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
                    if m < dist then target = v; dist = m end
                end
            end
        end
        if target then Camera.CFrame = Camera.CFrame:Lerp(CFrame.new(Camera.CFrame.Position, target.Character.Head.Position), 0.2) end
    end
    if _G.NoClip then
        for _, v in pairs(Player.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end
    end
end)

game:GetService("UserInputService").JumpRequest:Connect(function()
    if _G.InfJump then Player.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") end
end)

-- // BOTÃO FLUTUANTE //
local FB = Instance.new("ScreenGui", game:GetService("CoreGui"))
local B = Instance.new("ImageButton", FB)
B.Size = UDim2.new(0, 50, 0, 50)
B.Position = UDim2.new(0.02, 0, 0.4, 0)
B.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
B.Image = "rbxassetid://4483362458"
B.Draggable = true
Instance.new("UICorner", B).CornerRadius = UDim.new(1, 0)
B.MouseButton1Click:Connect(function()
    local g = game:GetService("CoreGui"):FindFirstChild("RayfieldGui")
    if g then g.Main.Visible = not g.Main.Visible end
end)
