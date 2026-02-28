--[[ 
    😈 KRONOS PT V10.0 | GENGAR SHADOW EDITION
    Dono: red_wolf12370 
    Tema: Deep Purple & Gengar Style
    Key: KRONOS
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- // 🔑 SISTEMA DE KEY KRONOS //
local Window = Rayfield:CreateWindow({
   Name = "😈 KRONOS PT V10.0 | GENGAR EDITION",
   LoadingTitle = "SHADOW SYSTEM INITIALIZING...",
   LoadingSubtitle = "by red_wolf12370",
   Theme = "Purple", -- Tema Roxo Gengar
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "KronosGengar",
      FileName = "Config"
   },
   KeySystem = true, 
   KeySettings = {
      Title = "🔑 KRONOS KEY SYSTEM",
      Subtitle = "Digite a Chave do Dono",
      Note = "Peça a key para o red_wolf12370",
      FileName = "KronosKey",
      SaveKey = true,
      GrabKeyFromSite = false,
      Key = {"KRONOS"} -- A CHAVE QUE VOCÊ PEDIU
   }
})

-- // CONFIGURAÇÕES DO MOTOR SHADOW //
_G.AutoFarm = false
_G.KillAura = false
_G.NoRecoil = false
_G.AutoLoot = false

-- // ⚔️ ABA: COMBAT GHOST (PURGATÓRIO EXCLUSIVE) //
local TabCombat = Window:CreateTab("⚔️ Combat Shadow")

TabCombat:CreateToggle({
   Name = "No Recoil & No Spread (Arma Parada)",
   CurrentValue = false,
   Callback = function(Value)
      _G.NoRecoil = Value
      game:GetService("RunService").RenderStepped:Connect(function()
         if _G.NoRecoil then
            -- Bypassa o recuo das armas do Purgatório
            pcall(function()
               local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
               if tool and tool:FindFirstChild("Configuration") then
                  for _, v in pairs(tool.Configuration:GetChildren()) do
                     if v.Name:find("Recoil") or v.Name:find("Spread") then
                        v.Value = 0
                     end
                  end
               end
            end)
         end
      end)
   end,
})

TabCombat:CreateToggle({
   Name = "Aimbot Feet Lock (Shadow)",
   CurrentValue = false,
   Callback = function(Value)
      _G.Aimbot = Value
      spawn(function()
         while _G.Aimbot do
            local Target = nil
            local Dist = 2000
            for _, p in pairs(game.Players:GetPlayers()) do
                if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("LeftFoot") then
                    local Pos, Vis = workspace.CurrentCamera:WorldToViewportPoint(p.Character.LeftFoot.Position)
                    if Vis then
                        local Mag = (Vector2.new(game:GetService("Players").LocalPlayer:GetMouse().X, game:GetService("Players").LocalPlayer:GetMouse().Y) - Vector2.new(Pos.X, Pos.Y)).Magnitude
                        if Mag < Dist then Target = p Dist = Mag end
                    end
                end
            end
            if Target then
                workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(workspace.CurrentCamera.CFrame.Position, Target.Character.LeftFoot.Position), 0.2)
            end
            task.wait()
         end
      end)
   end,
})

-- // 🌀 ABA: AUTO FARM & LOOT (SUPREMO) //
local TabFarm = Window:CreateTab("🌀 Shadow Farm")

TabFarm:CreateToggle({
   Name = "Auto Farm: Underground (Bypass)",
   CurrentValue = false,
   Callback = function(V)
      _G.AutoFarm = V
      spawn(function()
         while _G.AutoFarm do
            pcall(function()
               for _, v in pairs(workspace:GetChildren()) do
                  if v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Name ~= game.Players.LocalPlayer.Name then
                     repeat
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0, -8, 0)
                        task.wait()
                     until not _G.AutoFarm or v.Humanoid.Health <= 0
                  end
               end
            end)
            task.wait()
         end
      end)
   end,
})

TabFarm:CreateToggle({
   Name = "Auto Loot (Pegar Itens Sozinho)",
   CurrentValue = false,
   Callback = function(V)
      _G.AutoLoot = V
      spawn(function()
         while _G.AutoLoot do
            for _, obj in pairs(workspace:GetDescendants()) do
               if obj:IsA("TouchTransmitter") and obj.Parent.Name:find("Item") then
                  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, obj.Parent, 0)
                  firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, obj.Parent, 1)
               end
            end
            task.wait(0.5)
         end
      end)
   end,
})

-- // 🎭 ABA: GENGAR MODS (EXTRAS) //
local TabGengar = Window:CreateTab("😈 Gengar Extras")

TabGengar:CreateButton({
   Name = "Full Bright & No Fog",
   Callback = function()
      game:GetService("Lighting").Brightness = 2
      game:GetService("Lighting").FogEnd = 100000
      local light = Instance.new("PointLight", game.Players.LocalPlayer.Character.HumanoidRootPart)
      light.Range = 100
      light.Brightness = 2
   end,
})

TabGengar:CreateSlider({
   Name = "Velocidade Shadow",
   Range = {16, 300},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end,
})

-- // 📜 SALA DE CRÉDITOS //
local TabCredits = Window:CreateTab("📜 Sala do Gengar")
TabCredits:CreateSection("Proprietário: red_wolf12370")
TabCredits:CreateLabel("👑 O Rei do Purgatório")
TabCredits:CreateLabel("🔱 Tema: Gengar Shadow")
TabCredits:CreateParagraph({Title = "INFO", Content = "Script otimizado para burlar o Purgatório com sistema de Key KRONOS."})

Rayfield:Notify({Title = "KRONOS V10", Content = "Gengar Shadow Ativado!", Duration = 5})
