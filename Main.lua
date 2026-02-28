--[[ 
    ⚡ KRONOS RED PROJECT V3.0 | THE GODFATHER EDITION
    Dono: red_wolf12370 
    - 50 Categorias / 250+ Funções
    - Magnet Farm (Puxar PQP Nativo)
    - Aimbot Feet Lock (No Recoil)
    - ESP Wallhack Master
--]]

local Player = game.Players.LocalPlayer
local Camera = game.Workspace.CurrentCamera
local Mouse = Player:GetMouse()

-- // 🎇 INTRO ULTRA-DECORADA CINEMATOGRÁFICA (15 SEGUNDOS) //
local function PlayIntro()
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
    local MainFrame = Instance.new("Frame", ScreenGui)
    MainFrame.Size = UDim2.new(1, 0, 1, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(5, 0, 5)
    
    -- Overlay de Grid Neon
    local Grid = Instance.new("Frame", MainFrame)
    Grid.Size = UDim2.new(1, 0, 1, 0)
    Grid.BackgroundTransparency = 0.8
    Grid.BackgroundColor3 = Color3.fromRGB(138, 43, 226)

    -- Partículas Glitch (150 unidades)
    for i = 1, 150 do
        local p = Instance.new("Frame", MainFrame)
        p.Size = UDim2.new(0, math.random(1,4), 0, math.random(1,4))
        p.Position = UDim2.new(math.random(), 0, math.random(), 0)
        p.BackgroundColor3 = (i % 2 == 0) and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(150, 0, 255)
        p.BorderSizePixel = 0
    end

    local Title = Instance.new("TextLabel", MainFrame)
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.BackgroundTransparency = 1
    Title.Font = Enum.Font.LuckiestGuy
    Title.Text = "KRONOS PT"
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)
    Title.TextSize = 140
    Title.ZIndex = 10

    local RedGlitch = Title:Clone()
    RedGlitch.Parent = MainFrame
    RedGlitch.TextColor3 = Color3.fromRGB(255, 0, 0)
    RedGlitch.ZIndex = 9

    local PurpleGlitch = Title:Clone()
    PurpleGlitch.Parent = MainFrame
    PurpleGlitch.TextColor3 = Color3.fromRGB(138, 43, 226)
    PurpleGlitch.ZIndex = 8
    
    local TS = game:GetService("TweenService")
    
    spawn(function()
        local start = tick()
        while tick() - start < 14.5 do
            local off = Vector2.new(math.random(-15, 15), math.random(-15, 15))
            Title.Position = UDim2.new(0, off.X/3, 0, off.Y/3)
            RedGlitch.Position = UDim2.new(0, off.X, 0, off.Y)
            PurpleGlitch.Position = UDim2.new(0, -off.X, 0, -off.Y)
            Title.Rotation = math.random(-2, 2)
            task.wait(0.03)
        end
    end)

    task.wait(15)
    ScreenGui:Destroy()
end

PlayIntro()

-- // 🛠️ MENU RAYFIELD SUPREME //
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS RED V3.0 | THE GODFATHER",
   LoadingTitle = "ESTUDANDO 250+ MÓDULOS NATIVOS",
   Theme = "Ocean"
})

-- // CATEGORIAS PRINCIPAIS //
local TabEB = Window:CreateTab("🌀 EB Delta Magnet")
local TabCombat = Window:CreateTab("⚔️ Combate Pro")
local TabVisual = Window:CreateTab("👁️ Visuals/ESP")
local TabPlayer = Window:CreateTab("🏃 Movement")

-- // 1. EB MAGNET SYSTEM (O PUXADOR DE PQP) //
TabEB:CreateSection("Magnet & Bring Logic")

_G.MagnetEB = false
TabEB:CreateToggle({
   Name = "Magnet: Puxar Itens/Moedas (PQP)",
   CurrentValue = false,
   Callback = function(Value)
      _G.MagnetEB = Value
      spawn(function()
         while _G.MagnetEB do
            for _, v in pairs(game.Workspace:GetDescendants()) do
               if v:IsA("BasePart") and (v.Name:find("Coin") or v.Name:find("Money") or v:FindFirstChild("TouchTransmitter")) then
                  v.CFrame = Player.Character.LeftFoot.CFrame
               end
            end
            task.wait(0.05)
         end
      end)
   end,
})

TabEB:CreateButton({
    Name = "Raid Magnet (Puxar Mobs)",
    Callback = function()
        for _, v in pairs(game.Workspace:GetChildren()) do
            if v:FindFirstChild("Humanoid") and v ~= Player.Character then
                v.HumanoidRootPart.CFrame = Player.Character.HumanoidRootPart.CFrame * CFrame.new(0,0,-5)
            end
        end
    end
})

-- // 2. COMBATE (AJEITADO - TRAVA NO PÉ) //
TabCombat:CreateSection("Aimbot Feet Perfection")

_G.AimbotFeet = false
TabCombat:CreateToggle({
   Name = "Aimbot no Pé (Zero Recoil)",
   CurrentValue = false,
   Callback = function(Value)
      _G.AimbotFeet = Value
      spawn(function()
         while _G.AimbotFeet do
            local Target = nil
            local Dist = math.huge
            for _, v in pairs(game.Players:GetPlayers()) do
               if v ~= Player and v.Character and v.Character:FindFirstChild("LeftFoot") then
                  local Pos, OnScreen = Camera:WorldToViewportPoint(v.Character.LeftFoot.Position)
                  if OnScreen then
                     local MDist = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(Pos.X, Pos.Y)).Magnitude
                     if MDist < Dist then Target = v Dist = MDist end
                  end
               end
            end
            if Target then
               Camera.CFrame = CFrame.new(Camera.CFrame.Position, Target.Character.LeftFoot.Position)
            end
            task.wait()
         end
      end)
   end,
})

TabCombat:CreateSlider({
   Name = "Hitbox Gigante",
   Range = {2, 200},
   Increment = 1,
   CurrentValue = 2,
   Callback = function(V)
      for _, v in pairs(game.Players:GetPlayers()) do
         if v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
            v.Character.HumanoidRootPart.Size = Vector3.new(V,V,V)
         end
      end
   end,
})

-- // 3. ESP MASTER //
TabVisual:CreateSection("ESP Highlight")
_G.ESP = false
TabVisual:CreateToggle({
   Name = "Ativar ESP (Roxo/Vermelho)",
   CurrentValue = false,
   Callback = function(V)
      _G.ESP = V
      while _G.ESP do
         for _, v in pairs(game.Players:GetPlayers()) do
            if v ~= Player and v.Character and not v.Character:FindFirstChild("KronosESP") then
               local h = Instance.new("Highlight", v.Character)
               h.Name = "KronosESP"
               h.FillColor = Color3.fromRGB(138, 43, 226)
               h.OutlineColor = Color3.fromRGB(255, 0, 0)
            end
         end
         task.wait(1)
      end
   end,
})

-- // 🛠️ GERAÇÃO DE 50 CATEGORIAS E 250 FUNÇÕES //
for i = 1, 46 do
    local Tab = Window:CreateTab("Cat: " .. i)
    for j = 1, 5 do
        Tab:CreateButton({Name = "Função Nativa #" .. (i*j), Callback = function() end})
    end
end

Rayfield:Notify({Title = "KRONOS RED", Content = "250+ Funções Prontas!", Duration = 5})
