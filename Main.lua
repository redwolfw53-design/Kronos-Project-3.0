--[[ 
    😈 KRONOS PT V13.0 | GENGAR MASSACRE (HIT ALL NPCs)
    Dono: red_wolf12370 
    Tema: Gengar Shadow (Roxo & Preto)
    Chave: KRONOS
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "😈 KRONOS PT V13.0 | MASSACRE EDITION",
   LoadingTitle = "LOADING MASS HIT SYSTEM...",
   Theme = "Purple",
   KeySystem = true,
   KeySettings = {
      Title = "🔑 KRONOS KEY",
      Key = {"KRONOS"}
   }
})

-- // CONTROLES DE MASSACRE //
_G.MassKill = false
_G.AutoFarm = false

-- // 🌀 ABA: MASSACRE (DANO EM TODOS) //
local TabMass = Window:CreateTab("🌀 Shadow Massacre")

TabMass:CreateSection("Dano Global (Todos os NPCs)")

TabMass:CreateToggle({
   Name = "Mass Kill: Dano em TODOS os NPCs",
   CurrentValue = false,
   Callback = function(Value)
      _G.MassKill = Value
      spawn(function()
         while _G.MassKill do
            pcall(function()
               local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
               if Tool then
                  Tool:Activate() -- Ativa a arma
                  
                  -- Varre todos os NPCs do mapa e aplica o dano
                  for _, v in pairs(workspace:GetDescendants()) do
                     if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Health > 0 then
                        local isPlayer = game.Players:GetPlayerFromCharacter(v.Parent)
                        
                        if not isPlayer then -- Garante que não vai bater em players
                           -- Sistema de Dano Remoto (FireTouch em massa)
                           for _, part in pairs(v.Parent:GetChildren()) do
                              if part:IsA("BasePart") then
                                 firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 0)
                                 firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 1)
                              end
                           end
                        end
                     end
                  end
               end
            end)
            task.wait(0.1) -- Velocidade do Massacre
         end
      end)
   end,
})

TabMass:CreateSection("Teleporte de Farm")

TabMass:CreateToggle({
   Name = "Auto-Farm: Teleport Under (NPC Solo)",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoFarm = Value
      spawn(function()
         while _G.AutoFarm do
            pcall(function()
               for _, v in pairs(workspace:GetDescendants()) do
                  if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Health > 0 then
                     if not game.Players:GetPlayerFromCharacter(v.Parent) then
                        repeat
                           game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Parent.HumanoidRootPart.CFrame * CFrame.new(0, -8, 0)
                           task.wait()
                        until not _G.AutoFarm or v.Health <= 0
                     end
                  end
               end
            end)
            task.wait()
         end
      end)
   end,
})

-- // 🛡️ ABA: GHOST & SURVIVAL //
local TabGhost = Window:CreateTab("🛡️ Survival")

TabGhost:CreateButton({
   Name = "Invisible Mode (Bypass NPCs)",
   Callback = function()
      local char = game.Players.LocalPlayer.Character
      for _, v in pairs(char:GetChildren()) do
         if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then
            v.Transparency = 1
            v.CanCollide = false
         end
      end
   end,
})

-- // 📜 SALA DE CRÉDITOS //
local TabCredits = Window:CreateTab("📜 Sala do Gengar")
TabCredits:CreateLabel("👑 O Único Rei: red_wolf12370")
TabCredits:CreateParagraph({Title = "COMO USAR O MASS KILL:", Content = "Fique com a arma na mão e ative o 'Mass Kill'. O script vai enviar o dano da sua arma para todos os bixos do mapa ao mesmo tempo, sem você precisar se mexer."})

Rayfield:Notify({Title = "KRONOS V13 MASSACRE", Content = "Sistema de Dano Global Ativado!", Duration = 5})
