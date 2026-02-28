--[[ 
    ⚡ UNIVERSAL EXECUTOR v3.0 | KRONOS PROJECT ⚡
    Founder: red_wolf12370
    Style: Glass / Purple Neon / Gold Text
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Player = game.Players.LocalPlayer
local MyNick = "red_wolf12370" -- 🚩 Seu Nick de ADM

-- Verifica se é o dono
local isAdmin = (Player.Name == MyNick)

-- // CONFIGURAÇÃO DA JANELA PRINCIPAL //
local Window = Rayfield:CreateWindow({
   Name = "⚡ UNIVERSAL EXECUTOR v3.0",
   LoadingTitle = "KRONOS PROJECT",
   LoadingSubtitle = "by red_wolf12370",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "KronosConfig"
   },
   -- SISTEMA DE KEY (PULA SE FOR O DONO)
   KeySystem = not isAdmin,
   KeySettings = {
      Title = "Acesso Requerido",
      Subtitle = "Kronos Project v3.0",
      Note = "Dono entra direto sem key!",
      FileName = "KronosKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"WOLF2025"}
   }
})

-- // CUSTOMIZAÇÃO DE CORES //
Rayfield.ModifyTheme({
    ["TextColor"] = Color3.fromRGB(255, 215, 0),    -- Dourado
    ["AccentColor"] = Color3.fromRGB(120, 0, 200),  -- Roxo Neon
    ["OutlineColor"] = Color3.fromRGB(120, 0, 200), -- Borda Roxa
})

-- // VARIÁVEIS DE FUNÇÃO //
_G.InfJump = false
_G.HitboxSize = 2
_G.HitboxEnabled = false
_G.AutoKill = false

-- // ABAS //
local CombatTab = Window:CreateTab("🔫 COMBAT")
local VisualsTab = Window:CreateTab("👁️ VISUALS")
local PlayerTab = Window:CreateTab("🧍 PLAYER")
local MovementTab = Window:CreateTab("🏃 MOVEMENT")
local RageTab = Window:CreateTab("⚔️ RAGE")

-- // 👑 ABA DE ADM (SÓ APARECE PARA VOCÊ) //
if isAdmin then
    local AdminTab = Window:CreateTab("👑 ADMIN PANEL")
    local TargetPlayer = ""

    AdminTab:CreateSection("Gerenciar Usuários")
    
    AdminTab:CreateInput({
       Name = "Nick do Alvo",
       PlaceholderText = "Escreva o nick...",
       Callback = function(Text) TargetPlayer = Text end,
    })

    AdminTab:CreateButton({
       Name = "❄️ FREEZE (Congelar)",
       Callback = function()
          local p = game.Players:FindFirstChild(TargetPlayer)
          if p and p.Character then
              p.Character.HumanoidRootPart.Anchored = true
              Rayfield:Notify({Title = "ADM", Content = TargetPlayer .. " congelado!", Duration = 3})
          end
       end,
    })

    AdminTab:CreateButton({
       Name = "🔨 BAN (Expulsar)",
       Callback = function()
          local p = game.Players:FindFirstChild(TargetPlayer)
          if p then p:Kick("Banido pelo Dono!") end
       end,
    })
    
    Rayfield:Notify({Title = "Olá, Dono!", Content = "Painel Administrativo Ativado.", Duration = 5})
end

-- // 🔫 COMBAT //
CombatTab:CreateToggle({
   Name = "Auto Kill (Kill Aura)",
   CurrentValue = false,
   Callback = function(v)
      _G.AutoKill = v
      while _G.AutoKill do
         for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character then
               pcall(function() player.Character.Humanoid.Health = 0 end)
            end
         end
         task.wait(1)
      end
   end
})

-- // 🧍 PLAYER & MOVEMENT //
PlayerTab:CreateSlider({
   Name = "Speed Hack",
   Range = {16, 500},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(v) Player.Character.Humanoid.WalkSpeed = v end
})

PlayerTab:CreateToggle({
    Name = "Infinite Jump", 
    CurrentValue = false, 
    Callback = function(v) _G.InfJump = v end
})

-- // ⚔️ RAGE //
RageTab:CreateToggle({
   Name = "Ativar Hitbox Expander",
   CurrentValue = false,
   Callback = function(v)
      _G.HitboxEnabled = v
      while _G.HitboxEnabled do
         for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character then
               player.Character.HumanoidRootPart.Size = Vector3.new(_G.HitboxSize, _G.HitboxSize, _G.HitboxSize)
               player.Character.HumanoidRootPart.Transparency = 0.8
            end
         end
         task.wait(1)
      end
   end
})

-- // ÍCONE FLUTUANTE //
local FloatingButton = Instance.new("ScreenGui")
local ToggleButton = Instance.new("ImageButton")
FloatingButton.Parent = game:GetService("CoreGui")
ToggleButton.Parent = FloatingButton
ToggleButton.BackgroundColor3 = Color3.fromRGB(120, 0, 200)
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Position = UDim2.new(0.05, 0, 0.2, 0)
ToggleButton.Draggable = true
local Corner = Instance.new("UICorner", ToggleButton)
Corner.CornerRadius = UDim.new(1, 0)

ToggleButton.MouseButton1Click:Connect(function()
    local main = game:GetService("CoreGui"):FindFirstChild("RayfieldGui")
    if main then main.Main.Visible = not main.Main.Visible end
end)

-- Loop Inf Jump
game:GetService("UserInputService").JumpRequest:Connect(function()
    if _G.InfJump then Player.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping") end
end)

Rayfield:LoadConfiguration()
