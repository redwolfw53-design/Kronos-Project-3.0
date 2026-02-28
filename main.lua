--[[ 
    ⚡ UNIVERSAL EXECUTOR v3.0 | KRONOS PROJECT ⚡
    Founder: red_wolf12370
    Style: Glass / Purple Neon / Gold Text
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- // CONFIGURAÇÃO DA JANELA PRINCIPAL //
local Window = Rayfield:CreateWindow({
   Name = "⚡ UNIVERSAL EXECUTOR v3.0",
   LoadingTitle = "KRONOS PROJECT",
   LoadingSubtitle = "by red_wolf12370",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "KronosConfig"
   },
   -- SISTEMA DE KEY (SENHA ÚNICA)
   KeySystem = true,
   KeySettings = {
      Title = "Acesso Requerido",
      Subtitle = "Kronos Project v3.0",
      Note = "Key única para inscritos do red_wolf12370",
      FileName = "KronosKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"WOLF2025"} -- 🚩 MUDE SUA SENHA AQUI
   }
})

-- // CUSTOMIZAÇÃO DE CORES (ROXO E DOURADO) //
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
local CreditsTab = Window:CreateTab("📝 CREDITS")
local SettingsTab = Window:CreateTab("⚙️ SETTINGS")

-- // 🔫 COMBAT //
CombatTab:CreateToggle({
   Name = "Auto Kill (Kill Aura)",
   CurrentValue = false,
   Callback = function(v)
      _G.AutoKill = v
      while _G.AutoKill do
         for _, player in pairs(game.Players:GetPlayers()) do
            if player ~= game.Players.LocalPlayer and player.Character then
               -- Lógica básica (Depende do jogo para ser 100% eficaz)
               pcall(function() player.Character.Humanoid.Health = 0 end)
            end
         end
         task.wait(1)
      end
   end
})
CombatTab:CreateToggle({Name = "Aimbot", CurrentValue = false, Callback = function(v) _G.Aimbot = v end})

-- // 👁️ VISUALS //
VisualsTab:CreateToggle({
   Name = "Fullbright (Tirar Escuridão)",
   CurrentValue = false,
   Callback = function(v)
      if v then game.Lighting.Brightness = 2; game.Lighting.GlobalShadows = false 
      else game.Lighting.Brightness = 1; game.Lighting.GlobalShadows = true end
   end
})

-- // 🧍 PLAYER //
PlayerTab:CreateSlider({
   Name = "Speed Hack",
   Range = {16, 500},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end
})

-- // ⚔️ RAGE //
RageTab:CreateSection("Hitbox Grande")
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
               player.Character.HumanoidRootPart.BrickColor = BrickColor.new("Bright violet")
            end
         end
         task.wait(1)
      end
   end
})
RageTab:CreateSlider({Name = "Tamanho da Hitbox", Range = {2, 50}, Increment = 1, CurrentValue = 2, Callback = function(v) _G.HitboxSize = v end})

-- // 📝 CREDITS //
CreditsTab:CreateSection("FOUNDER & DEVELOPER")
CreditsTab:CreateLabel("👑 Nick: red_wolf12370", 4483362458)
CreditsTab:CreateLabel("⭐ Cargo: Roblox Script Developer")
CreditsTab:CreateLabel("💜 Versão: Universal v3.0")
CreditsTab:CreateButton({Name = "Copiar Discord", Callback = function() setclipboard("discord.gg/redwolf") end})

-- // ⚙️ SETTINGS //
SettingsTab:CreateButton({
   Name = "💾 SALVAR CONFIG E FECHAR",
   Callback = function() 
      Rayfield:Notify({Title = "Salvo!", Content = "Configurações de red_wolf aplicadas.", Duration = 3})
      Rayfield:Destroy() 
   end
})

-- // LOOP DE PULO INFINITO //
game:GetService("UserInputService").JumpRequest:Connect(function()
    if _G.InfJump then
        game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
    end
end)

PlayerTab:CreateToggle({Name = "Infinite Jump", CurrentValue = false, Callback = function(v) _G.InfJump = v end})

Rayfield:LoadConfiguration()
-- // CONFIGURAÇÃO DO ÍCONE FLUTUANTE //
local FloatingButton = Instance.new("ScreenGui")
local ToggleButton = Instance.new("ImageButton")
local Corner = Instance.new("UICorner")

FloatingButton.Name = "KronosFloatingIcon"
FloatingButton.Parent = game:GetService("CoreGui") -- Para não aparecer nas capturas de ecrã
FloatingButton.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ToggleButton.Name = "ToggleButton"
ToggleButton.Parent = FloatingButton
ToggleButton.BackgroundColor3 = Color3.fromRGB(120, 0, 200) -- Roxo do teu estilo
ToggleButton.Position = UDim2.new(0.05, 0, 0.2, 0) -- Posição na tela
ToggleButton.Size = UDim2.new(0, 50, 0, 50) -- Tamanho da bolinha
ToggleButton.Image = "rbxassetid://4483362458" -- Ícone de Raio (podes trocar pelo ID do teu logo)
ToggleButton.Draggable = true -- Podes arrastar a bolinha para onde quiseres

Corner.CornerRadius = UDim.new(1, 0) -- Deixa o botão redondo
Corner.Parent = ToggleButton

-- Função para abrir/fechar o menu ao clicar na bolinha
ToggleButton.MouseButton1Click:Connect(function()
    local targetState = not game:GetService("CoreGui").RayfieldGui.Main.Visible
    game:GetService("CoreGui").RayfieldGui.Main.Visible = targetState
end)

