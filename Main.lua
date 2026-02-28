--[[ 
    😈 KRONOS PT V20.0 | THE GENGAR GOD (MASSACRE TOTAL)
    Dono: red_wolf12370 
    Tema: Deep Purple Shadow
    Chave: KRONOS
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "😈 KRONOS PT V20.0 | GENGAR APOCALYPSE",
   LoadingTitle = "INJETANDO INSTANT KILL SYSTEM...",
   Theme = "Purple",
   KeySystem = true, 
   KeySettings = {
      Title = "🔑 KRONOS KEY",
      Key = {"KRONOS"}
   }
})

_G.Magnet = false
_G.InstantKill = false

-- // LOCALIZADOR DE ALVOS //
local function GetEnemies()
    local Targets = {}
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Health > 0 then
            if not game.Players:GetPlayerFromCharacter(v.Parent) then
                table.insert(Targets, v.Parent)
            end
        end
    end
    return Targets
end

-- // 🌀 ABA: MAGNET & INSTANT KILL //
local TabMass = Window:CreateTab("🌀 Shadow Massacre")

TabMass:CreateToggle({
   Name = "MAGNET: Puxar e Congelar NPCs",
   CurrentValue = false,
   Callback = function(Value)
      _G.Magnet = Value
      spawn(function()
         while _G.Magnet do
            pcall(function()
               local myPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
               for _, npc in pairs(GetEnemies()) do
                  -- Puxa todos para 5 blocos na sua frente
                  npc:PivotTo(myPos * CFrame.new(0, 0, -6))
                  -- Congela para não fugirem
                  if not npc.HumanoidRootPart:FindFirstChild("Hold") then
                     local bv = Instance.new("BodyVelocity", npc.HumanoidRootPart)
                     bv.Name = "Hold"
                     bv.Velocity = Vector3.new(0,0,0)
                     bv.MaxForce = Vector3.new(9e9, 9e9, 9e9)
                  end
               end
            end)
            task.wait(0.1)
         end
      end)
   end,
})

TabMass:CreateToggle({
   Name = "INSTANT KILL (Dano x100)",
   CurrentValue = false,
   Callback = function(Value)
      _G.InstantKill = Value
      spawn(function()
         while _G.InstantKill do
            pcall(function()
               local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
               if tool then
                  tool:Activate()
                  for _, enemy in pairs(GetEnemies()) do
                     -- LOOP DE DANO INFINITO (INSTANT KILL)
                     for i = 1, 50 do
                        firetouchinterest(tool.Handle, enemy.HumanoidRootPart, 0)
                        firetouchinterest(tool.Handle, enemy.HumanoidRootPart, 1)
                     end
                  end
               end
            end)
            task.wait(0.05)
         end
      end)
   end,
})

-- // 🛡️ ABA: 10 FUNÇÕES SUPER ÚTEIS //
local TabExtra = Window:CreateTab("🛡️ God Functions")

TabExtra:CreateButton({Name = "1. God Mode (Imortal)", Callback = function() game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false) end})
TabExtra:CreateButton({Name = "2. Anti-Stun (Não trava)", Callback = function() game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false end})
TabExtra:CreateButton({Name = "3. Full Bright (Sem Escuridão)", Callback = function() game:GetService("Lighting").Brightness = 2; game:GetService("Lighting").FogEnd = 100000 end})
TabExtra:CreateButton({Name = "4. No Clip (Atravessar Paredes)", Callback = function() game:GetService("RunService").Stepped:Connect(function() for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end) end})
TabExtra:CreateButton({Name = "5. Infinite Jump", Callback = function() game:GetService("UserInputService").JumpRequest:Connect(function() game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping") end) end})
TabExtra:CreateButton({Name = "6. Speed Hack (Rápido)", Callback = function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 end})
TabExtra:CreateButton({Name = "7. Jump Power (Pulo Alto)", Callback = function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150 end})
TabExtra:CreateButton({Name = "8. Invisible (Bypass NPCs)", Callback = function() for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then v.Transparency = 1 end end end})
TabExtra:CreateButton({Name = "9. Anti-AFK (Nunca cai)", Callback = function() game:GetService("Players").LocalPlayer.Idled:connect(function() game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame); wait(1); game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame) end) end})
TabExtra:CreateButton({Name = "10. Delete All Fog (Neblina)", Callback = function() for _, v in pairs(game:GetService("Lighting"):GetChildren()) do if v:IsA("Sky") or v:IsA("Atmosphere") then v:Destroy() end end end})

-- // 📜 SALA DO DONO //
local TabCredits = Window:CreateTab("📜 Sala do Gengar")
TabCredits:CreateLabel("👑 O Único Rei: red_wolf12370")
TabCredits:CreateParagraph({Title = "INFO V20", Content = "Ative o Magnet e o Instant Kill juntos. Seus inimigos serão puxados e deletados em milissegundos."})

Rayfield:Notify({Title = "KRONOS V20 LOADED", Content = "A Chave é KRONOS", Duration = 5})
