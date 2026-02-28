--[[ 
    ⚡ KRONOS RED PROJECT V3.0 | DARK GRAFITE EDITION
    Dono: red_wolf12370 | Intro: 15 Segundos Estilo Grafite
--]]

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local IsOwner = (Player.Name == "red_wolf12370" or Player.UserId == 6046467475)

-- Variáveis de Controle
_G.AimbotEnabled = false
_G.HitboxEnabled = false

-- // 🎨 INTRO GRAFITE PROFISSIONAL (15 SEGUNDOS) //
local function PlayIntro()
    local ScreenGui = Instance.new("ScreenGui")
    local MainFrame = Instance.new("Frame")
    local TextLabel = Instance.new("TextLabel")
    local TextOutline = Instance.new("TextLabel")
    local UIGradient = Instance.new("UIGradient")
    local UIShadow = Instance.new("ImageLabel")

    ScreenGui.Parent = game.CoreGui
    
    MainFrame.Name = "IntroFrame"
    MainFrame.Parent = ScreenGui
    MainFrame.BackgroundColor3 = Color3.fromRGB(5, 5, 5) -- Fundo Dark
    MainFrame.BackgroundTransparency = 1
    MainFrame.Size = UDim2.new(1, 0, 1, 0)
    
    UIShadow.Parent = MainFrame
    UIShadow.BackgroundTransparency = 1
    UIShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    UIShadow.Size = UDim2.new(0, 0, 0, 0)
    UIShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    UIShadow.Image = "rbxassetid://1316045217" -- Efeito Spray/Fumaça
    UIShadow.ImageColor3 = Color3.fromRGB(138, 43, 226) -- Roxo Neon
    UIShadow.ImageTransparency = 1

    local function SetupText(obj)
        obj.Parent = MainFrame
        obj.BackgroundTransparency = 1
        obj.Position = UDim2.new(0.5, 0, 0.5, 0)
        obj.Size = UDim2.new(0, 500, 0, 150)
        obj.Font = Enum.Font.Creepster -- Estilo Grafite
        obj.Text = "KRONOS PT"
        obj.TextSize = 90
        obj.TextTransparency = 1
        obj.AnchorPoint = Vector2.new(0.5, 0.5)
    end

    SetupText(TextOutline)
    TextOutline.TextColor3 = Color3.fromRGB(0, 0, 0)
    TextOutline.Position = UDim2.new(0.5, 5, 0.5, 5) -- Sombra foda

    SetupText(TextLabel)
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)

    UIGradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(138, 43, 226)), -- Roxo
        ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 191, 255)), -- Azul
        ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 20, 20)) -- Dark
    }
    UIGradient.Rotation = 45
    UIGradient.Parent = TextLabel

    local TS = game:GetService("TweenService")
    TS:Create(MainFrame, TweenInfo.new(1.5), {BackgroundTransparency = 0.05}):Play()
    TS:Create(UIShadow, TweenInfo.new(4), {ImageTransparency = 0.3, Size = UDim2.new(1.3, 0, 1.3, 0)}):Play()
    TS:Create(TextLabel, TweenInfo.new(2.5), {TextTransparency = 0}):Play()
    TS:Create(TextOutline, TweenInfo.new(2.5), {TextTransparency = 0.1}):Play()
    
    task.wait(12) -- Segura o visual foda por 12s
    
    TS:Create(TextLabel, TweenInfo.new(1.5), {TextTransparency = 1}):Play()
    TS:Create(TextOutline, TweenInfo.new(1.5), {TextTransparency = 1}):Play()
    TS:Create(MainFrame, TweenInfo.new(1.5), {BackgroundTransparency = 1}):Play()
    TS:Create(UIShadow, TweenInfo.new(1.5), {ImageTransparency = 1}):Play()
    
    task.wait(1.5)
    ScreenGui:Destroy()
end

-- Inicia a Intro Profissional
PlayIntro()

-- // 🛠️ MENU PRINCIPAL RAYFIELD //
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS RED V3.0",
   LoadingTitle = "INICIANDO KRONOS PT...",
   LoadingSubtitle = "by red_wolf12370",
   Theme = "Ocean",
   KeySystem = not IsOwner,
   KeySettings = {
      Title = "KRONOS RED KEY",
      Subtitle = "Key: kronos55",
      SaveKey = true,
      Key = {"kronos55"}
   }
})

-- // ABAS //
local RedPVP = Window:CreateTab("⚔️ kronos_pvp")
local RedEBDelta = Window:CreateTab("🌀 eb_delta")
local RedAdmin = Window:CreateTab("👑 kronos_adm")

-- PVP (AIMBOT E HITBOX)
RedPVP:CreateSection("Mira & Combate")
RedPVP:CreateToggle({
   Name = "kronos_aimbot | Mira Automática",
   CurrentValue = false,
   Callback = function(Value)
      _G.AimbotEnabled = Value
      if Value then
         spawn(function()
            while _G.AimbotEnabled do
               local Target = nil
               local Dist = math.huge
               for _, v in pairs(game.Players:GetPlayers()) do
                  if v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                     local ScreenPos, OnScreen = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                     if OnScreen then
                        local MouseDist = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(ScreenPos.X, ScreenPos.Y)).Magnitude
                        if MouseDist < Dist then Target = v Dist = MouseDist end
                     end
                  end
               end
               if Target then
                  game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position, Target.Character.HumanoidRootPart.Position)
               end
               task.wait()
            end
         end)
      end
   end,
})

RedPVP:CreateToggle({
   Name = "kronos_hitbox | Ativar Hitbox Gigante",
   CurrentValue = false,
   Callback = function(Value)
      _G.HitboxEnabled = Value
      if Value then
         spawn(function()
            while _G.HitboxEnabled do
               for _, v in pairs(game.Players:GetPlayers()) do
                  if v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                     v.Character.HumanoidRootPart.Size = Vector3.new(20, 20, 20)
                     v.Character.HumanoidRootPart.Transparency = 0.7
                     v.Character.HumanoidRootPart.CanCollide = false
                  end
               end
               task.wait(1)
            end
         end)
      end
   end,
})

-- EB DELTA (FARM E RAIDS)
RedEBDelta:CreateSection("Auto-Farm EB Delta")
RedEBDelta:CreateButton({
   Name = "kronos_money | Farm de Dinheiro",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/main/Script.md"))()
   end,
})

RedEBDelta:CreateButton({
   Name = "kronos_raid | Auto-Raid / Dungeon",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/Trink-Menu/main/Script.md"))()
   end,
})

-- ADMIN (100+ FUNÇÕES)
RedAdmin:CreateSection("Painel Admin")
RedAdmin:CreateButton({
   Name = "ABRIR 100+ FUNÇÕES (Infinite Yield)",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

RedAdmin:CreateSlider({
   Name = "Velocidade",
   Range = {16, 500},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(V) Player.Character.Humanoid.WalkSpeed = V end,
})

if IsOwner then
   RedAdmin:CreateSection("👑 PAINEL DO DONO")
   RedAdmin:CreateButton({
      Name = "KICK ALL | Expulsar Todos",
      Callback = function()
         for _, v in pairs(game.Players:GetPlayers()) do
            if v ~= Player then v:Kick("KRONOS RED: O Dono encerrou o servidor.") end
         end
      end,
   })
end
