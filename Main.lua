--[[ 
    ⚡ KRONOS PROJECT V3.0 | THE ULTRA EXECUTOR ⚡
    Founder: red_wolf12370
    Layout: Sidebar Dark / Transparent Glass
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Player = game.Players.LocalPlayer
local MyNick = "red_wolf12370"
local isAdmin = (Player.Name == MyNick)

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS PROJECT V3.0 | ULTRA",
   LoadingTitle = "Injetando Módulos de Elite...",
   LoadingSubtitle = "by red_wolf12370",
   ConfigurationSaving = { Enabled = true, FolderName = "KronosConfig" },
   KeySystem = not isAdmin,
   KeySettings = {
      Title = "Acesso Requerido",
      Subtitle = "Key: WOLF2025",
      Note = "Dono entra direto!",
      FileName = "KronosKey",
      SaveKey = true,
      Key = {"WOLF2025"} 
   }
})

-- // TEMA DARK TRANSPARENTE //
Rayfield.ModifyTheme({
    ["TextColor"] = Color3.fromRGB(255, 255, 255),
    ["AccentColor"] = Color3.fromRGB(120, 0, 200),
    ["BackgroundColor"] = Color3.fromRGB(10, 10, 10), -- Darker
    ["OutlineColor"] = Color3.fromRGB(30, 30, 30),
})

-- // DEFINIÇÃO DAS ABAS (Sidebar) //
local CombatTab = Window:CreateTab("🔫 COMBAT")
local VisualsTab = Window:CreateTab("👁️ VISUALS")
local PlayerTab = Window:CreateTab("🧍 PLAYER")
local WorldTab = Window:CreateTab("🌍 WORLD")
local MiscTab = Window:CreateTab("🧰 MISC")
local MovementTab = Window:CreateTab("🏃 MOVEMENT")
local RageTab = Window:CreateTab("⚔️ RAGE")
local AdminTab = (isAdmin and Window:CreateTab("👑 ADMIN PANEL") or nil)
local CreditsTab = Window:CreateTab("📝 CREDITS")
local SettingsTab = Window:CreateTab("⚙️ SETTINGS")

-- // 👑 ADMIN PANEL (SÓ PARA VOCÊ) //
if isAdmin then
    AdminTab:CreateSection("Controle de Jogadores")
    local TargetNick = ""
    
    AdminTab:CreateInput({
       Name = "Nick do Alvo",
       PlaceholderText = "Escreva o nick...",
       Callback = function(t) TargetNick = t end
    })

    AdminTab:CreateButton({
       Name = "❄️ FREEZE (Congelar)",
       Callback = function() 
          local p = game.Players:FindFirstChild(TargetNick)
          if p and p.Character then p.Character.HumanoidRootPart.Anchored = true end
       end
    })

    AdminTab:CreateButton({
       Name = "🔥 UNFREEZE (Descongelar)",
       Callback = function() 
          local p = game.Players:FindFirstChild(TargetNick)
          if p and p.Character then p.Character.HumanoidRootPart.Anchored = false end
       end
    })

    AdminTab:CreateButton({
       Name = "🔨 KICK (Expulsar)",
       Callback = function() 
          local p = game.Players:FindFirstChild(TargetNick)
          if p then p:Kick("Banido pelo Dono do Kronos!") end
       end
    })
    
    AdminTab:CreateSection("Monitoramento")
    AdminTab:CreateButton({
       Name = "Ver Lista de Jogadores (F9)",
       Callback = function()
          for _, v in pairs(game.Players:GetPlayers()) do print("Jogador: " .. v.Name .. " | ID: " .. v.UserId) end
       end
    })
end

-- // 🔫 COMBAT //
CombatTab:CreateSection("Principais")
CombatTab:CreateToggle({Name = "Aimbot", CurrentValue = false, Callback = function(v) _G.Aimbot = v end})
CombatTab:CreateToggle({Name = "Silent Aim", CurrentValue = false, Callback = function(v) _G.Silent = v end})
CombatTab:CreateToggle({Name = "Auto Shoot", CurrentValue = false, Callback = function(v) _G.AutoShoot = v end})
CombatTab:CreateButton({Name = "Instant Kill", Callback = function() _G.InstaKill = true end})

-- // 👁️ VISUALS //
VisualsTab:CreateSection("ESP & Chams")
VisualsTab:CreateButton({Name = "Ativar ESP Box", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end})
VisualsTab:CreateToggle({Name = "Fullbright", CurrentValue = false, Callback = function(v) game.Lighting.Brightness = v and 2 or 1 end})

-- // 🧍 PLAYER //
PlayerTab:CreateSlider({Name = "Speed Hack", Range = {16, 500}, Increment = 1, CurrentValue = 16, Callback = function(v) Player.Character.Humanoid.WalkSpeed = v end})
PlayerTab:CreateToggle({Name = "Noclip", CurrentValue = false, Callback = function(v) _G.NoClip = v end})

-- // ⚔️ RAGE //
RageTab:CreateSection("Apelação")
RageTab:CreateSlider({
   Name = "Hitbox Expander",
   Range = {2, 50},
   Increment = 1,
   CurrentValue = 2,
   Callback = function(v)
      for _, p in pairs(game.Players:GetPlayers()) do
         if p ~= Player and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
            p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
            p.Character.HumanoidRootPart.Transparency = 0.8
         end
      end
   end
})

-- // 🧰 MISC //
MiscTab:CreateButton({Name = "Infinite Yield", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})
MiscTab:CreateButton({Name = "FPS Booster", Callback = function() 
    for _, v in pairs(game:GetDescendants()) do if v:IsA("BasePart") then v.Material = "SmoothPlastic" end end
end})

-- // 📝 CREDITS //
CreditsTab:CreateLabel("👑 Founder: red_wolf12370")
CreditsTab:CreateLabel("⭐ Version: v3.0 Ultra Edition")
CreditsTab:CreateButton({Name = "Copiar Discord", Callback = function() setclipboard("discord.gg/redwolf") end})

-- // BOTÃO FLUTUANTE DARK //
local FloatingButton = Instance.new("ScreenGui", game:GetService("CoreGui"))
local Btn = Instance.new("ImageButton", FloatingButton)
Btn.Size = UDim2.new(0, 45, 0, 45)
Btn.Position = UDim2.new(0.05, 0, 0.4, 0)
Btn.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Btn.Image = "rbxassetid://4483362458"
Btn.Draggable = true
Instance.new("UICorner", Btn).CornerRadius = UDim.new(1, 0)
Btn.MouseButton1Click:Connect(function()
    local gui = game:GetService("CoreGui"):FindFirstChild("RayfieldGui")
    if gui then gui.Main.Visible = not gui.Main.Visible end
end)

Rayfield:LoadConfiguration()
