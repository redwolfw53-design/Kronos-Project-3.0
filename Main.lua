--[[ 
    ⚡ KRONOS RED PROJECT V3.0 | EB DELTA EDITION
    Dono: red_wolf12370 | 100+ Funções Integradas
--]]

local Player = game.Players.LocalPlayer
local IsOwner = (Player.Name == "red_wolf12370" or Player.UserId == 6046467475)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS RED V3.0",
   LoadingTitle = "CARREGANDO CATEGORIA EB DELTA...",
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
local RedVisuals = Window:CreateTab("👁️ kronos_view")
local RedEBDelta = Window:CreateTab("🌀 eb_delta") -- NOVA CATEGORIA QUE VOCÊ PEDIU
local RedAdmin = Window:CreateTab("👑 kronos_adm")

-- // 1. SEÇÃO PVP //
RedPVP:CreateSection("Mira & Combate Universal")
RedPVP:CreateButton({
   Name = "kronos_aimbot | Mira Automática (Exunys)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))() end)
   end,
})

RedPVP:CreateButton({
   Name = "kronos_hitbox | Hitbox Gigante (Tamanho 20)",
   Callback = function()
      _G.HeadSize = 20
      game:GetService('RunService').RenderStepped:Connect(function()
         for i,v in pairs(game:GetService('Players'):GetPlayers()) do
            if v.Name ~= Player.Name then
               pcall(function()
                  v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                  v.Character.HumanoidRootPart.Transparency = 0.7
                  v.Character.HumanoidRootPart.CanCollide = false
               end)
            end
         end
      end)
      Rayfield:Notify({Title = "KRONOS", Content = "Hitbox Ativada!", Duration = 3})
   end,
})

-- // 2. SEÇÃO EB DELTA (DINHEIRO, RAID, PARKOUR) //
RedEBDelta:CreateSection("Funções Principais EB")

RedEBDelta:CreateButton({
   Name = "kronos_money | Auto-Farm Dinheiro (Khaos)",
   Callback = function()
      Rayfield:Notify({Title = "KRONOS RED", Content = "Iniciando kronos_money...", Duration = 5})
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/main/Script.md"))() end)
   end,
})

RedEBDelta:CreateButton({
   Name = "kronos_raid | Auto-Raid & Dungeon",
   Callback = function()
      Rayfield:Notify({Title = "KRONOS RED", Content = "Iniciando kronos_raid...", Duration = 5})
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/Trink-Menu/main/Script.md"))() end)
   end,
})

RedEBDelta:CreateButton({
   Name = "kronos_parkur | Parkour & Speed EB",
   Callback = function()
      Rayfield:Notify({Title = "KRONOS RED", Content = "Iniciando kronos_parkur...", Duration = 5})
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PARKUR/main/Script.md"))() end)
   end,
})

-- // 3. VISUALS //
RedVisuals:CreateButton({
   Name = "kronos_view | Ver Players (Wallhack)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end)
   end,
})

-- // 4. ABA ADM (MAIS DE 75 FUNÇÕES INTEGRADAS) //
RedAdmin:CreateSection("Comandos de Administrador")

RedAdmin:CreateButton({
   Name = "kronos_full_admin | Abrir +100 Comandos (Infinite Yield)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
   end,
})

RedAdmin:CreateSlider({
   Name = "Velocidade",
   Range = {16, 500},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value) Player.Character.Humanoid.WalkSpeed = Value end,
})

RedAdmin:CreateButton({
   Name = "kronos_fly | Voar (Mobile)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))() end)
   end,
})

if IsOwner then
    RedAdmin:CreateSection("👑 EXCLUSIVO DO DONO")
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
   Content = "Categoria EB DELTA Carregada!",
   Duration = 5,
})
