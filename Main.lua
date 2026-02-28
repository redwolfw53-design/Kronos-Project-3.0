--[[ 
    😈 KRONOS PT V11.0 | GENGAR SHADOW (FIXED AUTO-KILL)
    Dono: red_wolf12370 
    Tema: Deep Purple (Gengar)
    Key: KRONOS
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "😈 KRONOS PT V11.0 | PURGATORY",
   LoadingTitle = "SHADOW SYSTEM V11 | BY RED_WOLF",
   Theme = "Purple",
   KeySystem = true,
   KeySettings = {
      Title = "🔑 KRONOS KEY",
      Key = {"KRONOS"}
   }
})

-- // MOTOR DE DESTRUIÇÃO //
_G.AutoFarm = false
_G.KillAura = false
_G.TargetBoss = false

-- Função para achar o inimigo mais próximo (Mob ou Boss)
local function GetTarget()
    local Target = nil
    local Dist = math.huge
    -- Varre Workspace e áreas comuns de spawn do Purgatório
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Health > 0 and v.Parent.Name ~= game.Players.LocalPlayer.Name then
            -- Se "TargetBoss" estiver on, ele foca em nomes grandes ou com muita vida
            if _G.TargetBoss and v.MaxHealth < 500 then continue end
            
            local Mag = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.Parent.HumanoidRootPart.Position).Magnitude
            if Mag < Dist then
                Target = v.Parent
                Dist = Mag
            end
        end
    end
    return Target
end

-- // 🌀 ABA: AUTO FARM & BOSS //
local TabFarm = Window:CreateTab("🌀 Shadow Farm")

TabFarm:CreateToggle({
   Name = "Auto-Kill Mobs (Teleport Under)",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoFarm = Value
      spawn(function()
         while _G.AutoFarm do
            local Mob = GetTarget()
            if Mob then
               repeat
                  task.wait()
                  -- Teleporte Forçado 8 studs abaixo (Bypass do Purgatório)
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Mob.HumanoidRootPart.CFrame * CFrame.new(0, -8, 0) * CFrame.Angles(math.rad(90), 0, 0)
               until not _G.AutoFarm or not Mob:FindFirstChild("Humanoid") or Mob.Humanoid.Health <= 0
            end
            task.wait()
         end
      end)
   end,
})

TabFarm:CreateToggle({
   Name = "Focus Boss Only (Kill Boss)",
   CurrentValue = false,
   Callback = function(Value) _G.TargetBoss = Value end,
})

TabFarm:CreateToggle({
   Name = "Kill Aura (Force Attack)",
   CurrentValue = false,
   Callback = function(Value)
      _G.KillAura = Value
      spawn(function()
         while _G.KillAura do
            pcall(function()
               local Tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
               if Tool then 
                  Tool:Activate() -- Bate/Atira
                  -- Força o golpe no bicho
                  for _, v in pairs(workspace:GetDescendants()) do
                      if v:IsA("TouchTransmitter") and v.Parent.Parent == GetTarget() then
                          firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0)
                          firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1)
                      end
                  end
               end
            end)
            task.wait(0.05)
         end
      end)
   end,
})

-- // ⚔️ COMBAT GHOST //
local TabCombat = Window:CreateTab("⚔️ Combat")

TabCombat:CreateToggle({
   Name = "Infinite Ammo / No Reload",
   CurrentValue = false,
   Callback = function(Value)
      _G.InfAmmo = Value
      spawn(function()
         while _G.InfAmmo do
            pcall(function()
               local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
               if tool and tool:FindFirstChild("Ammo") then tool.Ammo.Value = 999 end
            end)
            task.wait(1)
         end
      end)
   end,
})

-- // 📜 SALA DE CRÉDITOS //
local TabCredits = Window:CreateTab("📜 Sala do Gengar")
TabCredits:CreateLabel("👑 Proprietário: red_wolf12370")
TabCredits:CreateLabel("🔱 Versão 11.0 Fixed (Auto-Kill Boss)")
TabCredits:CreateParagraph({Title = "Dica do Dono", Content = "Ative o Auto-Kill e o Kill Aura juntos. O personagem vai sumir no chão e os bichos vão morrer sozinhos."})

Rayfield:Notify({Title = "KRONOS V11 FIXED", Content = "Sistema de Auto-Kill Pronto!", Duration = 5})
