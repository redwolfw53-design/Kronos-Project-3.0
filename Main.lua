--[[ 
    😈 KRONOS PT V21.0 | THE GENGAR GOD (OVERPOWERED DAMAGE)
    Dono: red_wolf12370 
    Tema: Deep Purple Shadow (Gengar)
    Chave: KRONOS
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "😈 KRONOS PT V21.0 | GENGAR APOCALYPSE",
   LoadingTitle = "INJETANDO OVERPOWERED DAMAGE...",
   Theme = "Purple",
   KeySystem = true, 
   KeySettings = {
      Title = "🔑 KRONOS KEY",
      Key = {"KRONOS"}
   }
})

_G.Magnet = false
_G.KillAura = false
_G.AutoClicker = false

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

-- // 🌀 ABA: MASSACRE & MAGNET //
local TabMass = Window:CreateTab("🌀 Shadow Massacre")

TabMass:CreateSection("Destruição de NPCs")

TabMass:CreateToggle({
   Name = "MAGNET: Puxar NPCs (Estilo Ímã)",
   CurrentValue = false,
   Callback = function(Value)
      _G.Magnet = Value
      spawn(function()
         while _G.Magnet do
            pcall(function()
               local myPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
               for _, npc in pairs(GetEnemies()) do
                  npc:PivotTo(myPos * CFrame.new(0, 0, -6))
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
   Name = "AUTO CLICKER: Atacar sem parar",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoClicker = Value
      spawn(function()
         while _G.AutoClicker do
            pcall(function()
               local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
               if tool then
                  tool:Activate() -- Clica no botão de ataque automaticamente
               end
            end)
            task.wait(0.01) -- Velocidade de clique insana
         end
      end)
   end,
})

TabMass:CreateToggle({
   Name = "KILL AURA: Dano x100.000 (Insta-Kill)",
   CurrentValue = false,
   Callback = function(Value)
      _G.KillAura = Value
      spawn(function()
         while _G.KillAura do
            pcall(function()
               local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
               if tool then
                  for _, enemy in pairs(GetEnemies()) do
                     -- LOOP DE DANO MASSIVO (Simula 100.000 de dano por segundo)
                     for i = 1, 150 do 
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

-- // 🛡️ ABA: 10 FUNÇÕES GENGAR //
local TabExtra = Window:CreateTab("🛡️ God Functions")

TabExtra:CreateButton({Name = "1. God Mode (Imortal)", Callback = function() game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Dead, false) end})
TabExtra:CreateButton({Name = "2. Anti-Stun", Callback = function() game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false end})
TabExtra:CreateButton({Name = "3. Full Bright", Callback = function() game:GetService("Lighting").Brightness = 2; game:GetService("Lighting").FogEnd = 100000 end})
TabExtra:CreateButton({Name = "4. No Clip", Callback = function() game:GetService("RunService").Stepped:Connect(function() for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false end end end) end})
TabExtra:CreateButton({Name = "5. Infinite Jump", Callback = function() game:GetService("UserInputService").JumpRequest:Connect(function() game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping") end) end})
TabExtra:CreateButton({Name = "6. Speed Hack (100)", Callback = function() game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100 end})
TabExtra:CreateButton({Name = "7. Jump Power (150)", Callback = function() game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150 end})
TabExtra:CreateButton({Name = "8. Invisible Mode", Callback = function() for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do if v:IsA("BasePart") and v.Name ~= "HumanoidRootPart" then v.Transparency = 1 end end end})
TabExtra:CreateButton({Name = "9. Anti-AFK", Callback = function() game:GetService("Players").LocalPlayer.Idled:connect(function() game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame); wait(1); game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame) end) end})
TabExtra:CreateButton({Name = "10. Delete All Fog", Callback = function() for _, v in pairs(game:GetService("Lighting"):GetChildren()) do if v:IsA("Sky") or v:IsA("Atmosphere") then v:Destroy() end end end})

-- // 📜 SALA DE CRÉDITOS //
local TabCredits = Window:CreateTab("📜 Sala do Gengar")
TabCredits:CreateLabel("👑 O Rei: red_wolf12370")
TabCredits:CreateParagraph({Title = "INFO V21 OVERPOWER", Content = "Ative o Magnet + Auto Clicker + Kill Aura. Essa combinação puxa os bichos e aplica o dano x100.000 instantaneamente."})

Rayfield:Notify({Title = "KRONOS V21 LOADED", Content = "Poder Máximo Injetado!", Duration = 5})
