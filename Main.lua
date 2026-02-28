--[[ 
    😈 KRONOS PT V15.0 | GENGAR APOCALYPSE (REMOTE HIT FIX)
    Dono: red_wolf12370 
    Tema: Gengar Shadow (Roxo & Preto)
    Chave: KRONOS
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "😈 KRONOS PT V15.0 | GOD OF PURGATORY",
   LoadingTitle = "BYPASSING REMOTE PROTECTIONS...",
   Theme = "Purple",
   KeySystem = true, 
   KeySettings = {
      Title = "🔑 KRONOS KEY",
      Key = {"KRONOS"}
   }
})

-- // CONFIGURAÇÕES DO MOTOR SHADOW //
_G.MassKill = false
_G.AutoFarm = false
_G.Distance = -12 -- Mais fundo para garantir imortalidade

-- // 🌀 ABA: MASSACRE TOTAL (HIT ALL) //
local TabMass = Window:CreateTab("🌀 Shadow Massacre")

TabMass:CreateToggle({
   Name = "KILL ALL NPCs (Dano em Massa Remoto)",
   CurrentValue = false,
   Callback = function(Value)
      _G.MassKill = Value
      spawn(function()
         while _G.MassKill do
            pcall(function()
               local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
               if tool then
                  -- Varre todos os inimigos no Workspace
                  for _, v in pairs(workspace:GetDescendants()) do
                     if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Health > 0 then
                        if not game.Players:GetPlayerFromCharacter(v.Parent) then
                           -- SIMULA O HIT REAL (Bypass de distância)
                           local args = {
                               [1] = v.Parent.HumanoidRootPart,
                               [2] = v.Parent.Humanoid
                           }
                           
                           -- Procura o Remote de Dano na arma e dispara
                           local event = tool:FindFirstChild("RemoteEvent") or tool:FindFirstChildOfClass("RemoteEvent")
                           if event then
                               event:FireServer(unpack(args))
                           end
                           
                           -- Caso o jogo use FireTouch (Plano B)
                           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent.HumanoidRootPart, 0)
                           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent.HumanoidRootPart, 1)
                        end
                     end
                  end
               end
            end)
            task.wait(0.05) -- Delay mínimo para não crashar o Delta
         end
      end)
   end,
})

-- // 🌀 ABA: AUTO FARM (TELEPORT UNDER FIXED) //
local TabFarm = Window:CreateTab("🌀 Shadow Farm")

TabFarm:CreateToggle({
   Name = "Auto-Farm: Teleport Under Fixed",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoFarm = Value
      spawn(function()
         while _G.AutoFarm do
            pcall(function()
               for _, v in pairs(workspace:GetDescendants()) do
                  if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Health > 0 then
                     if not game.Players:GetPlayerFromCharacter(v.Parent) then
                        local target = v.Parent
                        repeat
                           -- Teleporte Robusto usando PivotTo
                           game.Players.LocalPlayer.Character:PivotTo(target.HumanoidRootPart.CFrame * CFrame.new(0, _G.Distance, 0))
                           task.wait()
                        until not _G.AutoFarm or not target:FindFirstChild("Humanoid") or target.Humanoid.Health <= 0
                     end
                  end
               end
            end)
            task.wait()
         end
      end)
   end,
})

-- // 😈 ABA: GENGAR EXTRAS //
local TabGengar = Window:CreateTab("😈 Gengar Extras")

TabGengar:CreateSlider({
   Name = "Profundidade do Chão",
   Range = {-30, -5},
   Increment = 1,
   CurrentValue = -12,
   Callback = function(Value) _G.Distance = Value end,
})

TabGengar:CreateButton({
   Name = "Bypass Anti-Cheat (God Mode)",
   Callback = function()
      -- Desativa a detecção de morte do Purgatório
      game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
      Rayfield:Notify({Title = "KRONOS", Content = "God Mode Injetado!", Duration = 5})
   end,
})

-- // 📜 SALA DE CRÉDITOS //
local TabCredits = Window:CreateTab("📜 Sala do Gengar")
TabCredits:CreateLabel("👑 O Único Rei: red_wolf12370")
TabCredits:CreateParagraph({Title = "FIX V15", Content = "Injetamos um sistema de Remote Trigger. Agora o dano vai direto pro servidor, ignorando a distância do bicho."})

Rayfield:Notify({Title = "KRONOS V15 LOADED", Content = "Shadow Massacre Pronto!", Duration = 5})
