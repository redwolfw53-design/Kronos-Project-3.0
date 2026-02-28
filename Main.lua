--[[ 
    😈 KRONOS PT V14.0 | GENGAR APOCALYPSE (FIXED ALL)
    Dono: red_wolf12370 
    Tema: Gengar Shadow (Roxo & Preto)
    Chave: KRONOS
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "😈 KRONOS PT V14.0 | APOCALYPSE",
   LoadingTitle = "BYPASSING PURGATORY PROTECTION...",
   Theme = "Purple",
   KeySystem = true,
   KeySettings = {
      Title = "🔑 KRONOS KEY",
      Key = {"KRONOS"}
   }
})

-- // CONFIGURAÇÕES DO MOTOR //
_G.MassKill = false
_G.AutoFarm = false
_G.Distance = -8 -- Distância debaixo do bicho

-- // FUNÇÃO DE BUSCA AVANÇADA //
local function GetEnemies()
    local Enemies = {}
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Health > 0 then
            if not game.Players:GetPlayerFromCharacter(v.Parent) then
                table.insert(Enemies, v.Parent)
            end
        end
    end
    return Enemies
end

-- // 🌀 ABA: MASSACRE TOTAL //
local TabMass = Window:CreateTab("🌀 Shadow Massacre")

TabMass:CreateToggle({
   Name = "KILL ALL NPCs (Dano em Massa)",
   CurrentValue = false,
   Callback = function(Value)
      _G.MassKill = Value
      spawn(function()
         while _G.MassKill do
            pcall(function()
               local enemies = GetEnemies()
               local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
               
               if tool then
                  tool:Activate() -- Ativa a arma
                  for _, enemy in pairs(enemies) do
                     -- Força o dano em cada parte do bicho ao mesmo tempo
                     for _, part in pairs(enemy:GetChildren()) do
                        if part:IsA("BasePart") then
                           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 0)
                           firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, part, 1)
                        end
                     end
                  end
               end
            end)
            task.wait(0.01) -- Velocidade máxima de processamento
         end
      end)
   end,
})

-- // 🌀 ABA: AUTO FARM (TELEPORT UNDER) //
local TabFarm = Window:CreateTab("🌀 Shadow Farm")

TabFarm:CreateToggle({
   Name = "Auto-Farm: Teleport Under Fixed",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoFarm = Value
      spawn(function()
         while _G.AutoFarm do
            pcall(function()
               local enemies = GetEnemies()
               if #enemies > 0 then
                  local target = enemies[1] -- Pega o mais próximo
                  repeat
                     -- Teleporte via Pivot para garantir que vá para debaixo do NPC
                     game.Players.LocalPlayer.Character:PivotTo(target.HumanoidRootPart.CFrame * CFrame.new(0, _G.Distance, 0))
                     task.wait()
                  until not _G.AutoFarm or not target:FindFirstChild("Humanoid") or target.Humanoid.Health <= 0
               end
            end)
            task.wait()
         end
      end)
   end,
})

-- // 🎭 ABA: GENGAR MODS //
local TabGengar = Window:CreateTab("😈 Gengar Extras")

TabGengar:CreateSlider({
   Name = "Ajustar Altura Debaixo do Solo",
   Range = {-20, -5},
   Increment = 1,
   CurrentValue = -8,
   Callback = function(Value) _G.Distance = Value end,
})

TabGengar:CreateButton({
   Name = "Invisible Mode (NPC Bypass)",
   Callback = function()
      game.Players.LocalPlayer.Character.LowerTorso:Destroy() -- Deleta a parte que os NPCs usam para te ver
   end,
})

-- // 📜 SALA DE CRÉDITOS //
local TabCredits = Window:CreateTab("📜 Sala do Gengar")
TabCredits:CreateLabel("👑 O Único Rei: red_wolf12370")
TabCredits:CreateParagraph({Title = "FIX V14", Content = "Agora o script usa o sistema de Pivot para o teleporte e o GetDescendants para não deixar nenhum NPC de fora do massacre."})

Rayfield:Notify({Title = "KRONOS V14 FIXED", Content = "Massacre Total Ativado!", Duration = 5})
