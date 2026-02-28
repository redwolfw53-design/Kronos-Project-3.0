
--[[ 
    😈 KRONOS PT V23.0 | GENGAR SHADOW (FIX TOTAL)
    Dono: red_wolf12370 
    Tema: Purple Shadow
    Key: KRONOS
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "😈 KRONOS PT V23.0 | PURGATORY FIX",
   LoadingTitle = "SCANNEANDO MAPA E NPCs...",
   Theme = "Purple",
   KeySystem = true, 
   KeySettings = {
      Title = "🔑 KRONOS KEY",
      Key = {"KRONOS"}
   }
})

_G.AutoFarm = false
_G.GodMode = false
_G.Distance = 8

-- // LOCALIZADOR UNIVERSAL (PEGA ATÉ NPC ESCONDIDO) //
local function GetClosestNPC()
    local Target = nil
    local Distance = math.huge
    for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
        if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Health > 0 then
            if not game.Players:GetPlayerFromCharacter(v.Parent) and v.Parent ~= game.Players.LocalPlayer.Character then
                local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.HumanoidRootPart.Position).Magnitude
                if Mag < Distance then
                    Distance = Mag
                    Target = v.Parent
                end
            end
        end
    end
    return Target
end

-- // 🌀 ABA: AUTO FARM SUPREMO //
local TabFarm = Window:CreateTab("🌀 Shadow Farm")

TabFarm:CreateToggle({
   Name = "AUTO FARM 100% (Modo Caçador)",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoFarm = Value
      spawn(function()
         while _G.AutoFarm do
            pcall(function()
               local npc = GetClosestNPC()
               if npc then
                  -- Teleporte de Precisão (Tween)
                  local char = game.Players.LocalPlayer.Character
                  local tool = char:FindFirstChildOfClass("Tool")
                  
                  -- Fica em cima do bicho pra não cair no chão falso
                  char.HumanoidRootPart.CFrame = npc.HumanoidRootPart.CFrame * CFrame.new(0, _G.Distance, 0) * CFrame.Angles(math.rad(-90), 0, 0)
                  
                  if tool then
                     tool:Activate() -- Ataca
                     -- Força o dano no bicho
                     firetouchinterest(tool.Handle, npc.HumanoidRootPart, 0)
                     firetouchinterest(tool.Handle, npc.HumanoidRootPart, 1)
                  end
               end
            end)
            task.wait(0.1)
         end
      end)
   end,
})

-- // 🛡️ ABA: GOD MODE & BYPASS //
local TabGod = Window:CreateTab("🛡️ God Mode")

TabGod:CreateButton({
   Name = "ATIVAR IMORTALIDADE (Anti-Dano)",
   Callback = function()
      _G.GodMode = true
      local lp = game.Players.LocalPlayer
      if lp.Character:FindFirstChild("Humanoid") then
         lp.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false)
         -- Deleta as partes que recebem dano (No-Hitbox)
         if lp.Character:FindFirstChild("LowerTorso") then lp.Character.LowerTorso:Destroy() end
         Rayfield:Notify({Title = "SISTEMA", Content = "God Mode Ativado!", Duration = 5})
      end
   end,
})

-- // 🎭 ABA: EXTRAS //
local TabExtra = Window:CreateTab("🎭 Funções")

TabExtra:CreateSlider({
   Name = "Ajustar Altura do Farm",
   Range = {5, 20},
   Increment = 1,
   CurrentValue = 8,
   Callback = function(v) _G.Distance = v end,
})

TabExtra:CreateButton({
   Name = "Velocidade Gengar (150)",
   Callback = function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 150 end,
})

-- // 📜 SALA DE CRÉDITOS //
local TabCredits = Window:CreateTab("📜 Sala do Gengar")
TabCredits:CreateLabel("👑 Script Original: red_wolf12370")
TabCredits:CreateParagraph({Title = "DICA DE OURO:", Content = "Se o Auto-Farm não mexer, é porque você precisa estar SEGURANDO UMA ARMA na mão antes de ligar o botão."})

Rayfield:Notify({Title = "KRONOS V23 FIXED", Content = "Scanner de NPCs Ativo!", Duration = 5})
