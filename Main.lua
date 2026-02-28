local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Player = game.Players.LocalPlayer
local MyNick = "red_wolf12370" -- Seu Nick para ADM
local isAdmin = (Player.Name == MyNick)

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3 | ADMIN",
   LoadingTitle = "Carregando Funções...",
   LoadingSubtitle = "by red_wolf12370",
   ConfigurationSaving = { Enabled = true, FolderName = "KronosConfig" },
   KeySystem = not isAdmin, 
   KeySettings = {
      Title = "Sistema de Key",
      Subtitle = "Apenas Usuários",
      Note = "Dono entra direto!",
      FileName = "KronosKey",
      SaveKey = true,
      Key = {"WOLF2025"} 
   }
})

-- // CRIAÇÃO DAS ABAS //
local MainTab = Window:CreateTab("🏠 HOME")
local CombatTab = Window:CreateTab("⚔️ COMBAT")
local PlayerTab = Window:CreateTab("🏃 PLAYER")

-- // 👑 ABA DE ADM (SÓ PARA VOCÊ) //
if isAdmin then
    local AdminTab = Window:CreateTab("👑 ADMIN PANEL")
    local TargetPlayer = ""

    AdminTab:CreateInput({
       Name = "Nick do Alvo",
       PlaceholderText = "Nick do cara...",
       Callback = function(Text) TargetPlayer = Text end,
    })

    AdminTab:CreateButton({
       Name = "❄️ FREEZE (Congelar)",
       Callback = function()
          local p = game.Players:FindFirstChild(TargetPlayer)
          if p and p.Character then p.Character.HumanoidRootPart.Anchored = true end
       end,
    })

    AdminTab:CreateButton({
       Name = "🔨 KICK (Banir)",
       Callback = function()
          local p = game.Players:FindFirstChild(TargetPlayer)
          if p then p:Kick("Banido pelo Dono!") end
       end,
    })
end

-- // ⚔️ COMBAT //
CombatTab:CreateToggle({
   Name = "Auto Kill / Kill Aura",
   CurrentValue = false,
   Callback = function(v) _G.KillAura = v end
})

-- // 🏃 PLAYER //
PlayerTab:CreateSlider({
   Name = "Velocidade (Speed)",
   Range = {16, 300},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(v) Player.Character.Humanoid.WalkSpeed = v end
})

-- // BOTÃO FLUTUANTE PARA ABRIR/FECHAR //
local FloatingButton = Instance.new("ScreenGui")
local ToggleButton = Instance.new("ImageButton")
FloatingButton.Parent = game:GetService("CoreGui")
ToggleButton.Parent = FloatingButton
ToggleButton.BackgroundColor3 = Color3.fromRGB(120, 0, 200)
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Position = UDim2.new(0, 10, 0.5, 0)
local Corner = Instance.new("UICorner", ToggleButton)
Corner.CornerRadius = UDim.new(1, 0)
ToggleButton.MouseButton1Click:Connect(function()
    game:GetService("CoreGui").RayfieldGui.Main.Visible = not game:GetService("CoreGui").RayfieldGui.Main.Visible
end)