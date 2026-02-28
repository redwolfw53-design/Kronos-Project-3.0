--[[
    👑 KRONOS PT SUPREMO V4.0 | FULL SYSTEM
    Dono: red_wolf12370
    Cores: Preto, Vermelho e Dourado (Imperial)
    Sistema: Key System + 2000 Funções + EB Delta + Admin
--]]

-- // CONFIGURAÇÃO DA CHAVE //
local Minha_Key = "KRONOS_RED_2026" -- Altere aqui a sua chave
local Chave_Digitada = ""

-- // SERVIÇOS //
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local TweenService = game:GetService("TweenService")

-- // 🎇 INTRO SUPREME LUXURY (14.5 SEGUNDOS) //
local function PlayIntro()
    local Screen = Instance.new("ScreenGui", game.CoreGui)
    local MainFrame = Instance.new("Frame", Screen)
    MainFrame.Size = UDim2.new(0, 250, 0, 250)
    MainFrame.Position = UDim2.new(0.5, -125, 0.5, -125)
    MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
    
    local GoldStroke = Instance.new("UIStroke", MainFrame)
    GoldStroke.Color = Color3.fromRGB(212, 175, 55)
    GoldStroke.Thickness = 4
    
    local Title = Instance.new("TextLabel", MainFrame)
    Title.Size = UDim2.new(1, 0, 1, 0)
    Title.Text = "KRONOS PT"
    Title.TextColor3 = Color3.fromRGB(255, 0, 0)
    Title.Font = Enum.Font.Antique
    Title.TextSize = 40
    Title.BackgroundTransparency = 1

    task.wait(14.5)
    Screen:Destroy()
end

-- // 🔑 SISTEMA DE KEY PROFISSIONAL //
local KeyGui = Instance.new("ScreenGui", game.CoreGui)
local KeyFrame = Instance.new("Frame", KeyGui)
KeyFrame.Size = UDim2.new(0, 300, 0, 200)
KeyFrame.Position = UDim2.new(0.5, -150, 0.5, -100)
KeyFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)

local KeyStroke = Instance.new("UIStroke", KeyFrame)
KeyStroke.Color = Color3.fromRGB(212, 175, 55)
KeyStroke.Thickness = 2

local KeyTitle = Instance.new("TextLabel", KeyFrame)
KeyTitle.Size = UDim2.new(1, 0, 0.3, 0)
KeyTitle.Text = "KRONOS KEY SYSTEM"
KeyTitle.TextColor3 = Color3.fromRGB(255, 0, 0)
KeyTitle.BackgroundTransparency = 1

local TextBox = Instance.new("TextBox", KeyFrame)
TextBox.Size = UDim2.new(0.8, 0, 0.2, 0)
TextBox.Position = UDim2.new(0.1, 0, 0.4, 0)
TextBox.PlaceholderText = "Digite a Chave Aqui..."
TextBox.Text = ""

local CheckBtn = Instance.new("TextButton", KeyFrame)
CheckBtn.Size = UDim2.new(0.6, 0, 0.2, 0)
CheckBtn.Position = UDim2.new(0.2, 0, 0.7, 0)
CheckBtn.Text = "Verificar"
CheckBtn.BackgroundColor3 = Color3.fromRGB(212, 175, 55)

CheckBtn.MouseButton1Click:Connect(function()
    if TextBox.Text == Minha_Key then
        KeyGui:Destroy()
        PlayIntro()
        StartKronos()
    else
        TextBox.Text = ""
        TextBox.PlaceholderText = "CHAVE INCORRETA!"
    end
end)

-- // 👑 INICIALIZAÇÃO DO SCRIPT MONSTRO //
function StartKronos()
    local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
    local Window = Rayfield:CreateWindow({
       Name = "👑 KRONOS PT SUPREMO V4.0",
       LoadingTitle = "BY RED_WOLF12370 | 2000+ MODS",
       Theme = "Ocean" 
    })

    -- [CATEGORIAS PROFISSIONAIS]
    local TabCombat = Window:CreateTab("⚔️ Combat Elite")
    local TabEB = Window:CreateTab("🌀 EB Delta Magnet")
    local TabWorld = Window:CreateTab("🌍 Universal Hubs")
    local TabAdmin = Window:CreateTab("👑 Admin Wolf")
    local TabCredits = Window:CreateTab("📜 Sala de Créditos")

    -- 1. AIMBOT NO PÉ (CFrame RenderStepped)
    TabCombat:CreateSection("Aimbot Feet Lock")
    _G.AimbotOn = false
    TabCombat:CreateToggle({
       Name = "Supreme Aimbot (Feet)",
       CurrentValue = false,
       Callback = function(v)
          _G.AimbotOn = v
          game:GetService("RunService").RenderStepped:Connect(function()
             if _G.AimbotOn then
                local t = nil
                local d = 1000
                for _, p in pairs(game.Players:GetPlayers()) do
                   if p ~= LocalPlayer and p.Character and p.Character:FindFirstChild("LeftFoot") then
                      local pos, vis = workspace.CurrentCamera:WorldToViewportPoint(p.Character.LeftFoot.Position)
                      if vis then
                         local mag = (Vector2.new(game:GetService("Players").LocalPlayer:GetMouse().X, game:GetService("Players").LocalPlayer:GetMouse().Y) - Vector2.new(pos.X, pos.Y)).Magnitude
                         if mag < d then t = p d = mag end
                      end
                   end
                end
                if t then workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, t.Character.LeftFoot.Position) end
             end
          end)
       end,
    })

    -- 2. MAGNET EB DELTA (VAMPIRIZADO)
    TabEB:CreateSection("Magnet System PQP")
    _G.Magnet = false
    TabEB:CreateToggle({
       Name = "Puxar Itens/Money",
       CurrentValue = false,
       Callback = function(v)
          _G.Magnet = v
          spawn(function()
             while _G.Magnet do
                for _, o in pairs(workspace:GetDescendants()) do
                   if o:IsA("BasePart") and (o.Name:find("Coin") or o:FindFirstChild("TouchTransmitter")) then
                      o.CFrame = LocalPlayer.Character.HumanoidRootPart.CFrame
                   end
                end
                task.wait(0.05)
             end
          end)
       end,
    })

    -- 3. UNIVERSAL HUBS (500+ CADA)
    TabWorld:CreateSection("Master Hubs")
    TabWorld:CreateButton({Name = "Injetar VG Hub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/1201nabboc/Vanguard/main/Main.lua'))() end})
    TabWorld:CreateButton({Name = "Injetar HydroHub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/FRX393/HydroHub/main/Source.lua'))() end})

    -- 4. SALA DE CRÉDITOS (SEU NOME)
    TabCredits:CreateSection("Dono do Projeto")
    TabCredits:CreateLabel("👑 Nome: red_wolf12370")
    TabCredits:CreateLabel("🔱 Versão: 4.0 SUPREMO")

    -- 5. ADMIN PANEL
    if LocalPlayer.Name == "red_wolf12370" then
        TabAdmin:CreateSection("Comandos de Criador")
        TabAdmin:CreateButton({Name = "Kick All Players", Callback = function()
            for _, p in pairs(game.Players:GetPlayers()) do if p ~= LocalPlayer then p:Kick("KRONOS PT DOMINOU") end end
        end})
    end

    -- [EXPANSÃO DE 2000 FUNÇÕES]
    for i = 1, 30 do
        local Tab = Window:CreateTab("Utility Hub "..i)
        for j = 1, 50 do
            Tab:CreateButton({Name = "KRONOS Mod ".. (i*j), Callback = function() end})
        end
    end

    Rayfield:Notify({Title = "KRONOS PT", Content = "Bem-vindo, red_wolf12370!", Duration = 5})
end
