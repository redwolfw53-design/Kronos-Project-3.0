--[[ 
    😈 KRONOS PT V22.0 | THE GENGAR GHOST (ANTI-DAMAGE)
    Dono: red_wolf12370 
    Tema: Gengar Shadow (Roxo & Preto)
    Chave: KRONOS
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "😈 KRONOS PT V22.0 | GENGAR GHOST",
   LoadingTitle = "BYPASSING ALL SERVER CHECKS...",
   Theme = "Purple",
   KeySystem = true, 
   KeySettings = {
      Title = "🔑 KRONOS KEY",
      Key = {"KRONOS"}
   }
})

_G.AutoFarmTotal = false
_G.GodMode = false

-- // FUNÇÃO DE BUSCA DE ALVOS //
local function GetTargets()
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

-- // 🌀 ABA: FARM 100% AUTOMÁTICO //
local TabAuto = Window:CreateTab("🌀 Full Auto")

TabAuto:CreateToggle({
   Name = "AUTO-FARM 100% (Teleport + Kill)",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoFarmTotal = Value
      spawn(function()
         while _G.AutoFarmTotal do
            pcall(function()
               local targets = GetTargets()
               for _, target in pairs(targets) do
                  if not _G.AutoFarmTotal then break end
                  
                  repeat
                     task.wait()
                     local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
                     if tool then
                        tool:Activate()
                        -- Cola no bicho (Em cima para não cair no void)
                        game.Players.LocalPlayer.Character:PivotTo(target.HumanoidRootPart.CFrame * CFrame.new(0, 7, 0))
                        
                        -- DANO FORÇADO (Multi-Hit Bypass)
                        for i = 1, 10 do
                           firetouchinterest(tool.Handle, target.HumanoidRootPart, 0)
                           firetouchinterest(tool.Handle, target.HumanoidRootPart, 1)
                        end
                     end
                  until not _G.AutoFarmTotal or target.Humanoid.Health <= 0
               end
            end)
            task.wait()
         end
      end)
   end,
})

-- // 🛡️ ABA: IMORTALIDADE GENGAR //
local TabGod = Window:CreateTab("🛡️ God Mode")

TabGod:CreateToggle({
   Name = "MODO FANTASMA (Não toma dano)",
   CurrentValue = false,
   Callback = function(Value)
      _G.GodMode = Value
      if Value then
         -- Remove a capacidade do servidor te dar dano
         game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
         -- Deleta as partes que os NPCs usam pra te detectar
         if game.Players.LocalPlayer.Character:FindFirstChild("LowerTorso") then
            game.Players.LocalPlayer.Character.LowerTorso.CanTouch = false
            game.Players.LocalPlayer.Character.UpperTorso.CanTouch = false
         end
         Rayfield:Notify({Title = "GENGAR GHOST", Content = "Você agora é intocável!", Duration = 5})
      end
   end,
})

-- // 🎭 ABA: EXTRAS ÚTEIS //
local TabExtra = Window:CreateTab("🎭 Funções")

TabExtra:CreateButton({
   Name = "Velocidade de Flash (150)",
   Callback = function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150 end,
})

TabExtra:CreateButton({
   Name = "Pulo Infinito",
   Callback = function()
      game:GetService("UserInputService").JumpRequest:Connect(function()
         game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
      end)
   end,
})

-- // 📜 SALA DE CRÉDITOS //
local TabCredits = Window:CreateTab("📜 Sala do Gengar")
TabCredits:CreateLabel("👑 Script por: red_wolf12370")
TabCredits:CreateParagraph({Title = "MANUAL 100% AUTO", Content = "1. Ligue o MODO FANTASMA primeiro.\n2. Equipe sua arma.\n3. Ligue o AUTO-FARM.\n4. Deixe o celular parado e o script fará tudo."})

Rayfield:Notify({Title = "KRONOS V22 ATIVADO", Content = "A Chave é KRONOS", Duration = 5})
