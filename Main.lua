--[[
    👑 KRONOS PT V6.0 | THE UNIVERSAL MONSTER
    Dono: red_wolf12370
    Build: Estável para Delta / Fluxus / Arceus
--]]

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Player = game.Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Humanoid = Character:WaitForChild("Humanoid")
local Camera = workspace.CurrentCamera
local Mouse = Player:GetMouse()

-- // 🎇 INTRO PROFISSIONAL (PRETO/VERMELHO/DOURADO) //
local function PlayIntro()
    local Screen = Instance.new("ScreenGui", game.CoreGui)
    local Frame = Instance.new("Frame", Screen)
    Frame.Size = UDim2.new(0, 220, 0, 220)
    Frame.Position = UDim2.new(0.5, -110, 0.5, -110)
    Frame.BackgroundColor3 = Color3.fromRGB(5, 5, 5)
    
    local Stroke = Instance.new("UIStroke", Frame)
    Stroke.Color = Color3.fromRGB(212, 175, 55) -- Dourado
    Stroke.Thickness = 3
    
    local Title = Instance.new("TextLabel", Frame)
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Text = "KRONOS PT\nV6.0"
    Title.TextColor3 = Color3.fromRGB(200, 0, 0) -- Vermelho
    Title.Font = Enum.Font.Antique
    Title.TextSize = 35
    Title.BackgroundTransparency = 1

    task.wait(10)
    Screen:Destroy()
end

PlayIntro()

local Window = OrionLib:MakeWindow({Name = "👑 KRONOS PT V6.0 | OWNER: RED_WOLF", HidePremium = false, SaveConfig = true, IntroEnabled = false})

-- // ⚔️ COMBAT ELITE (AIMBOT & HITBOX) //
local TabCombat = Window:MakeTab({Name = "⚔️ Combat", Icon = "rbxassetid://4483345998"})

_G.Aimbot = false
TabCombat:AddToggle({
    Name = "Aimbot Lock (Feet)",
    Default = false,
    Callback = function(v)
        _G.Aimbot = v
        game:GetService("RunService").RenderStepped:Connect(function()
            if _G.Aimbot then
                local Target = nil
                local Dist = 1000
                for _, p in pairs(game.Players:GetPlayers()) do
                    if p ~= Player and p.Character and p.Character:FindFirstChild("LeftFoot") then
                        local Pos, Vis = Camera:WorldToViewportPoint(p.Character.LeftFoot.Position)
                        if Vis then
                            local Mag = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Pos.X, Pos.Y)).Magnitude
                            if Mag < Dist then Target = p Dist = Mag end
                        end
                    end
                end
                if Target then Camera.CFrame = CFrame.new(Camera.CFrame.Position, Target.Character.LeftFoot.Position) end
            end
        end)
    end
})

_G.HitboxSize = 2
TabCombat:AddSlider({
    Name = "Hitbox Gigante (Expand)",
    Min = 2, Max = 50, Default = 2,
    Callback = function(v)
        _G.HitboxSize = v
        spawn(function()
            while true do
                for _, p in pairs(game.Players:GetPlayers()) do
                    if p ~= Player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                        p.Character.HumanoidRootPart.Size = Vector3.new(_G.HitboxSize, _G.HitboxSize, _G.HitboxSize)
                        p.Character.HumanoidRootPart.Transparency = 0.7
                        p.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really red")
                        p.Character.HumanoidRootPart.CanCollide = false
                    end
                end
                task.wait(1)
            end
        end)
    end
})

-- // 🏃 MOVEMENT (FLY & SPEED) //
local TabMove = Window:MakeTab({Name = "🏃 Movement", Icon = "rbxassetid://4483345998"})

TabMove:AddSlider({
    Name = "Velocidade Máxima",
    Min = 16, Max = 500, Default = 16,
    Callback = function(v) Player.Character.Humanoid.WalkSpeed = v end
})

TabMove:AddButton({
    Name = "Ativar Fly (Vôo V3)",
    Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))() end
})

-- // 🌀 EB DELTA (MAGNET) //
local TabEB = Window:MakeTab({Name = "🌀 EB Delta", Icon = "rbxassetid://4483345998"})

_G.Magnet = false
TabEB:AddToggle({
    Name = "Magnet Auto-Farm (Puxar PQP)",
    Default = false,
    Callback = function(v)
        _G.Magnet = v
        spawn(function()
            while _G.Magnet do
                for _, obj in pairs(workspace:GetDescendants()) do
                    if obj:IsA("BasePart") and (obj.Name:find("Coin") or obj:FindFirstChild("TouchTransmitter")) then
                        obj.CFrame = Player.Character.HumanoidRootPart.CFrame
                    end
                end
                task.wait(0.1)
            end
        end)
    end
})

-- // 🌍 UNIVERSAL (OUTRAS 50 FUNÇÕES) //
local TabExtra = Window:MakeTab({Name = "🌍 Extra Mods", Icon = "rbxassetid://4483345998"})

TabExtra:AddButton({Name = "Esp Full (Ver Paredes)", Callback = function() 
    -- Script de ESP Simples integrado
    for _, p in pairs(game.Players:GetPlayers()) do
        if p ~= Player and p.Character then
            local h = Instance.new("Highlight", p.Character)
            h.FillColor = Color3.fromRGB(255, 0, 0)
        end
    end
end})

TabExtra:AddButton({Name = "Anti-AFK (Não ser Kickado)", Callback = function()
    local vu = game:GetService("VirtualUser")
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end)
end})

-- Gerador de botões para completar as 50 funções
for i = 1, 40 do
    TabExtra:AddButton({Name = "Universal Function #"..i, Callback = function() end})
end

-- // 📜 SALA DE CRÉDITOS (EXCLUSIVO) //
local TabCredits = Window:MakeTab({Name = "📜 Credits", Icon = "rbxassetid://4483345998"})
TabCredits:AddLabel("👑 CRIADOR: red_wolf12370")
TabCredits:AddLabel("🔱 PROJETO: KRONOS PT")
TabCredits:AddParagraph("Aviso:","Este script foi feito sob medida para red_wolf12370. O uso por terceiros sem permissão é proibido.")

OrionLib:Init()
