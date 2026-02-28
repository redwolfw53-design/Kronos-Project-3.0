--[[ 
    ⚡ KRONOS RED PROJECT V3.0 | EXCLUSIVE EB DELTA STYLE
    Dono: red_wolf12370 | 100% Custom Visuals
--]]

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()
local IsOwner = (Player.Name == "red_wolf12370" or Player.UserId == 6046467475)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS RED V3.0",
   LoadingTitle = "INICIANDO KRONOS RED SYSTEM...",
   LoadingSubtitle = "by red_wolf12370",
   Theme = "Ocean",
   KeySystem = not IsOwner,
   KeySettings = {
      Title = "KRONOS RED KEY",
      Subtitle = "Key: kronos55",
      SaveKey = true,
      Key = {"kronos55"}
   }
})

-- // ABAS //
local RedPVP = Window:CreateTab("⚔️ kronos_pvp")
local RedEBDelta = Window:CreateTab("🌀 eb_delta")
local RedAdmin = Window:CreateTab("👑 kronos_adm")

-- // 1. SEÇÃO PVP (AIMBOT REESCRITO PARA FUNCIONAR) //
RedPVP:CreateSection("Combate Avançado")

RedPVP:CreateButton({
   Name = "kronos_aimbot | Ativar Mira Magnética",
   Callback = function()
      -- CÓDIGO DE AIMBOT DIRETO (SEM LINK EXTERNO)
      _G.AimbotEnabled = true
      game:GetService("RunService").RenderStepped:Connect(function()
         if _G.AimbotEnabled then
            local Target = nil
            local Dist = math.huge
            for _, v in pairs(game.Players:GetPlayers()) do
               if v ~= Player and v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                  local ScreenPos, OnScreen = game.Workspace.CurrentCamera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
                  if OnScreen then
                     local MouseDist = (Vector2.new(Mouse.X, Mouse.Y) - Vector2.new(ScreenPos.X, ScreenPos.Y)).Magnitude
                     if MouseDist < Dist then
                        Target = v
                        Dist = MouseDist
                     end
                  end
               end
            end
            if Target then
               game.Workspace.CurrentCamera.CFrame = CFrame.new(game.Workspace.CurrentCamera.CFrame.Position, Target.Character.HumanoidRootPart.Position)
            end
         end
      end)
      Rayfield:Notify({Title = "KRONOS", Content = "Aimbot Ativado!", Duration = 3})
   end,
})

RedPVP:CreateButton({
   Name = "kronos_hitbox | Hitbox Gigante (Tamanho 25)",
   Callback = function()
      _G.HeadSize = 25
      game:GetService('RunService').RenderStepped:Connect(function()
         for i,v in pairs(game:GetService('Players'):GetPlayers()) do
            if v.Name ~= Player.Name then
               pcall(function()
                  v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                  v.Character.HumanoidRootPart.Transparency = 0.8
                  v.Character.HumanoidRootPart.CanCollide = false
               end)
            end
         end
      end)
   end,
})

-- // 2. SEÇÃO EB DELTA (SISTEMA PRÓPRIO KRONOS - ESTILO DINHEIRO/RAID) //
RedEBDelta:CreateSection("KRONOS EB SYSTEM (Auto-Farm & Raid)")

RedEBDelta:CreateButton({
   Name = "kronos_money | Auto-Farm Dinheiro v1",
   Callback = function()
      -- Aqui ele executa o farm com a sua identidade visual
      Rayfield:Notify({Title = "KRONOS EB", Content = "Iniciando Farm de Dinheiro...", Duration = 5})
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/main/Script.md"))() end)
   end,
})

RedEBDelta:CreateButton({
   Name = "kronos_raid | Auto-Raid / Dungeon",
   Callback = function()
      Rayfield:Notify({Title = "KRONOS EB", Content = "Iniciando Auto-Raid...", Duration = 5})
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/Trink-Menu/main/Script.md"))() end)
   end,
})

RedEBDelta:CreateButton({
   Name = "kronos_parkur | Parkour Speed Master",
   Callback = function()
      Rayfield:Notify({Title = "KRONOS EB", Content = "Iniciando Parkour Style...", Duration = 5})
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PARKUR/main/Script.md"))() end)
   end,
})

-- // 3. ABA ADM (+100 FUNÇÕES REAIS) //
RedAdmin:CreateSection("Controle Total (75+ Comandos)")

RedAdmin:CreateButton({
   Name = "kronos_infinite_yield | Abrir Painel com 200+ Comandos",
   Callback = function()
      pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
   end,
})

RedAdmin:CreateSlider({
   Name = "Velocidade de Movimento",
   Range = {16, 1000},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value) Player.Character.Humanoid.WalkSpeed = Value end,
})

RedAdmin:CreateButton({
   Name = "kronos_fly | Voar pelo Mapa",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))() end)
   end,
})

RedAdmin:CreateButton({
   Name = "kronos_noclip | Atravessar Paredes",
   Callback = function()
      game:GetService("RunService").Stepped:Connect(function()
         for _, v in pairs(Player.Character:GetDescendants()) do
            if v:IsA("BasePart") then v.CanCollide = false end
         end
      end)
   end,
})

-- // EXCLUSIVO DONO //
if IsOwner then
    RedAdmin:CreateSection("👑 PAINEL DO DONO")
    RedAdmin:CreateButton({
       Name = "KICK ALL | Expulsar Todos",
       Callback = function()
          for _, v in pairs(game.Players:GetPlayers()) do
             if v ~= Player then v:Kick("KRONOS RED: O Dono encerrou o servidor.") end
          end
       end,
    })
end

Rayfield:Notify({
   Title = "KRONOS RED V3.0",
   Content = "Tudo Pronto! 100+ Funções e Sistema EB Ativado.",
   Duration = 5,
})
