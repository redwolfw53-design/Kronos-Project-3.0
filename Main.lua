--[[ 
    ⚡ KRONOS RED PROJECT V3.0 | STABLE VERSION
    Dono: red_wolf12370 | Fix: Anti-Bugs
--]]

local Player = game.Players.LocalPlayer
local IsOwner = (Player.Name == "red_wolf12370" or Player.DisplayName == "red_wolf12370")

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS RED V3.0",
   LoadingTitle = IsOwner and "BEM-VINDO, DONO RED!" or "Iniciando KRONOS RED...",
   LoadingSubtitle = "by red_wolf12370",
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
local RedMoney = Window:CreateTab("💰 kronos_money")
local RedUniversal = Window:CreateTab("🌀 kronos_universal")

-- // 1. SEÇÃO PVP (FIXED) //
RedPVP:CreateSection("Combate & Mira")

RedPVP:CreateButton({
   Name = "kronos_aimbot | Mira automática (Exunys)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))() end)
   end,
})

RedPVP:CreateButton({
   Name = "kronos_silent | Tiro certeiro (Sem Menu Azul)",
   Callback = function()
      -- Silent Aim que não abre interface bugada
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))() end)
      Rayfield:Notify({Title = "KRONOS", Content = "Silent Aim Ativado!", Duration = 3})
   end,
})

RedPVP:CreateButton({
   Name = "kronos_hitbox | Aumenta o corpo do inimigo",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Luau-Scripts/main/Hitbox%20Expander"))() end)
   end,
})

-- // 2. SEÇÃO VISUALS //
RedVisuals:CreateSection("Visão")

RedVisuals:CreateButton({
   Name = "kronos_esp | Ver players pelas paredes",
   Callback = function()
      pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end)
   end,
})

-- // 3. SEÇÃO MONEY (RENOMEADO) //
RedMoney:CreateSection("Farm Automático")

RedMoney:CreateButton({
   Name = "kronos_money | Ativar Money Farm",
   Callback = function()
      -- Forçando o nome no sistema
      Rayfield:Notify({Title = "KRONOS RED", Content = "Iniciando kronos_money...", Duration = 5})
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/main/Script.md"))() end)
   end,
})

-- // 4. SEÇÃO UNIVERSAL //
RedUniversal:CreateSection("Administração")

RedUniversal:CreateButton({
   Name = "kronos_admin | +50 Comandos (Infinite Yield)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
   end,
})

RedUniversal:CreateButton({
   Name = "kronos_fly | Ativar botão de voar",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))() end)
   end,
})

-- // ABA DO DONO //
if IsOwner then
    local OwnerTab = Window:CreateTab("👑 KRONOS_OWNER")
    OwnerTab:CreateSection("Painel do Dono")
    
    OwnerTab:CreateButton({
       Name = "kronos_kickall | Expulsar todos",
       Callback = function()
          for _, v in pairs(game.Players:GetPlayers()) do
             if v ~= Player then v:Kick("KRONOS RED: O Dono encerrou o servidor.") end
          end
       end,
    })
end

Rayfield:Notify({
   Title = "KRONOS RED",
   Content = "Script Estável e Carregado!",
   Duration = 5,
})
