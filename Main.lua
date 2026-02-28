--[[ 
    ⚡ KRONOS RED PROJECT V3.0 | STABLE & POWERFUL
    Dono: red_wolf12370 | Corrigido: Aimbot e Hitbox
--]]

local Player = game.Players.LocalPlayer
local IsOwner = (Player.Name == "red_wolf12370" or Player.UserId == 6046467475)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS RED V3.0",
   LoadingTitle = "Carregando KRONOS de Elite...",
   LoadingSubtitle = "by red_wolf12370",
   Theme = "Ocean",
   KeySystem = not IsOwner,
   KeySettings = {
      Title = "KRONOS RED KEY",
      Subtitle = "Chave: kronos55",
      SaveKey = true,
      Key = {"kronos55"}
   }
})

-- // ABAS //
local RedPVP = Window:CreateTab("⚔️ kronos_pvp")
local RedVisuals = Window:CreateTab("👁️ kronos_view")
local RedMoney = Window:CreateTab("💰 kronos_money")

-- // 1. PVP (USANDO SCRIPTS DIRETOS - SEM FALHAS) //
RedPVP:CreateSection("Mira & Combate Universal")

RedPVP:CreateButton({
   Name = "kronos_aimbot | Mira Automática (Exunys V2)",
   Callback = function()
      -- O Aimbot mais estável do mundo, roda direto de fundo
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))() end)
      Rayfield:Notify({Title = "KRONOS", Content = "Aimbot Ativado com Sucesso!", Duration = 3})
   end,
})

RedPVP:CreateButton({
   Name = "kronos_hitbox | Aumentar Hitbox (Universal)",
   Callback = function()
      -- Hitbox direta que expande o corpo dos inimigos na hora
      _G.HeadSize = 20
      _G.Disabled = false
      pcall(function()
         game:GetService('RunService').RenderStepped:connect(function()
            if _G.Disabled then return end
            for i,v in pairs(game:GetService('Players'):GetPlayers()) do
               if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                  pcall(function()
                     v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
                     v.Character.HumanoidRootPart.Transparency = 0.7
                     v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
                     v.Character.HumanoidRootPart.CanCollide = false
                  end)
               end
            end
         end)
      end)
      Rayfield:Notify({Title = "KRONOS", Content = "Hitbox Gigante Ativada!", Duration = 3})
   end,
})

RedPVP:CreateButton({
   Name = "kronos_silent | Tiro Certeiro (RayCodex)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Luau-Scripts/main/Silent%20Aim"))() end)
      Rayfield:Notify({Title = "KRONOS", Content = "Silent Aim Ativado!", Duration = 3})
   end,
})

-- // 2. VISUALS (OWL HUB COMO VIEW) //
RedVisuals:CreateSection("ESP & Visão")

RedVisuals:CreateButton({
   Name = "kronos_view | Ativar ESP/Wallhack (OwlHub)",
   Callback = function()
      -- O OwlHub costuma ser o mais compatível com Delta
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))() end)
   end,
})

-- // 3. MONEY (SISTEMA KRONOS) //
RedMoney:CreateButton({
   Name = "kronos_money | Iniciar Farm RED",
   Callback = function()
      Rayfield:Notify({Title = "KRONOS", Content = "Iniciando Sistema kronos_money...", Duration = 5})
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/main/Script.md"))() end)
   end,
})

-- // 👑 MENU ADM EXCLUSIVO //
if IsOwner then
    local OwnerTab = Window:CreateTab("👑 KRONOS_OWNER")
    OwnerTab:CreateButton({
       Name = "KICK ALL | Expulsar todos",
       Callback = function()
          for _, v in pairs(game.Players:GetPlayers()) do
             if v ~= Player then v:Kick("KRONOS RED: O Dono encerrou o servidor.") end
          end
       end,
    })
end
