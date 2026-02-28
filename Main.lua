--[[ 
    ⚡ KRONOS RED PROJECT V3.0 | ULTIMATE DESCRIPTIVE
    Dono: red_wolf12370 | Bypass Owner: Ativado
--]]

local Player = game.Players.LocalPlayer
local IsOwner = (Player.Name == "red_wolf12370" or Player.DisplayName == "red_wolf12370")

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- // JANELA PRINCIPAL //
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

-- // 1. SEÇÃO PVP //
RedPVP:CreateSection("Combate & Mira")

RedPVP:CreateButton({
   Name = "kronos_aimbot | Mira automática no inimigo",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))()
   end,
})

RedPVP:CreateButton({
   Name = "kronos_hitbox | Aumenta o corpo do inimigo",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Luau-Scripts/main/Hitbox%20Expander"))()
   end,
})

RedPVP:CreateButton({
   Name = "kronos_silent | Tiro certeiro sem olhar",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))()
   end,
})

-- // 2. SEÇÃO VISUALS //
RedVisuals:CreateSection("Visão & Espionagem")

RedVisuals:CreateButton({
   Name = "kronos_esp | Ver players pelas paredes",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))()
   end,
})

RedVisuals:CreateButton({
   Name = "kronos_bright | Iluminar mapa e tirar neblina",
   Callback = function()
      game.Lighting.Brightness = 2
      game.Lighting.ClockTime = 14
      game.Lighting.FogEnd = 100000
   end,
})

-- // 3. SEÇÃO MONEY //
RedMoney:CreateSection("Farm Automático")

RedMoney:CreateButton({
   Name = "kronos_money | Script de Farm (KHAOS)",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/main/Script.md"))()
   end,
})

-- // 4. SEÇÃO UNIVERSAL //
RedUniversal:CreateSection("Administração & Movimento")

RedUniversal:CreateButton({
   Name = "kronos_admin | +50 Comandos (Fly, God, TP)",
   Callback = function()
      loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

RedUniversal:CreateButton({
   Name = "kronos_fly | Ativar botão de voar",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))()
   end,
})

RedUniversal:CreateButton({
   Name = "kronos_dex | Explorador de arquivos do jogo",
   Callback = function()
      loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
   end,
})

-- // ABA DO DONO //
if IsOwner then
    local OwnerTab = Window:CreateTab("👑 KRONOS_OWNER")
    OwnerTab:CreateSection("Painel de Controle de Red")
    
    OwnerTab:CreateButton({
       Name = "kronos_kickall | Expulsar todos do servidor",
       Callback = function()
          for _, v in pairs(game.Players:GetPlayers()) do
             if v ~= Player then v:Kick("KRONOS RED: O Dono encerrou o servidor.") end
          end
       end,
    })
    
    OwnerTab:CreateInput({
       Name = "kronos_ban | Banir Usuário do Script",
       PlaceholderText = "Nick do Alvo...",
       Callback = function(Text)
          Rayfield:Notify({Title = "BANIDO", Content = "Usuário " .. Text .. " bloqueado do Kronos!", Duration = 5})
       end,
    })
end

Rayfield:Notify({
   Title = "KRONOS RED V3.0",
   Content = IsOwner and "Auto-Login: Bem-vindo, Red!" or "Script Carregado!",
   Duration = 5,
})
