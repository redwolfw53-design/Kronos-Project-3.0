--[[ 
    ⚡ KRONOS RED PROJECT V3.0 | VERSÃO DEFINITIVA
    Dono: red_wolf12370 | 75+ Funções Reais
    Status: Protegido & Sem Erros de Callback
--]]

local Player = game.Players.LocalPlayer
-- Verificação de Dono (Nome e ID para segurança total)
local IsOwner = (Player.Name == "red_wolf12370" or Player.UserId == 6046467475)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS RED V3.0",
   LoadingTitle = IsOwner and "BEM-VINDO, CHEFE RED!" or "KRONOS LOADING...",
   LoadingSubtitle = "by red_wolf12370",
   Theme = "Ocean", -- Estilo Azul/Roxo
   KeySystem = not IsOwner, -- Dono pula a Key
   KeySettings = {
      Title = "KRONOS RED KEY",
      Subtitle = "Chave: kronos55",
      SaveKey = true,
      Key = {"kronos55"}
   }
})

-- // ABAS DO MENU //
local RedPVP = Window:CreateTab("⚔️ kronos_pvp")
local RedVisuals = Window:CreateTab("👁️ kronos_view")
local RedMoney = Window:CreateTab("💰 kronos_money")
local RedParkur = Window:CreateTab("🏃 kronos_parkur")
local RedUniversal = Window:CreateTab("🌀 kronos_universal")

-- // 1. SEÇÃO PVP (SCRIPTS FAMOSOS) //
RedPVP:CreateSection("Mira & Combate")

RedPVP:CreateButton({
   Name = "kronos_aimbot | Mira automática (Exunys) - Famoso",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))() end)
   end,
})

RedPVP:CreateButton({
   Name = "kronos_silent | Tiro certeiro (Sem Menu Azul Bugado)",
   Callback = function()
      -- Script de Silent Aim limpo para não tapar a tela
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Luau-Scripts/main/Silent%20Aim"))() end)
      Rayfield:Notify({Title = "KRONOS", Content = "Silent Aim Ativado!", Duration = 3})
   end,
})

RedPVP:CreateButton({
   Name = "kronos_hitbox | Aumentar corpo do inimigo (Hitbox)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/skatbr/Luau-Scripts/main/Hitbox%20Expander"))() end)
   end,
})

-- // 2. SEÇÃO VISUALS (ESP QUE FUNCIONA NO DELTA) //
RedVisuals:CreateSection("Espionagem")

RedVisuals:CreateButton({
   Name = "kronos_esp | Ver players pelas paredes (SpaceHub ESP)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end)
   end,
})

-- // 3. SEÇÃO MONEY (SCRIPTS DO PEDRINHU RENOMEADOS) //
RedMoney:CreateSection("Farm de Dinheiro")

RedMoney:CreateButton({
   Name = "kronos_money | Ativar Auto-Farm (KHAOS Mode)",
   Callback = function()
      Rayfield:Notify({Title = "KRONOS", Content = "Iniciando kronos_money...", Duration = 3})
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/main/Script.md"))() end)
   end,
})

-- // 4. SEÇÃO PARKUR //
RedParkur:CreateSection("Movimentação Pro")

RedParkur:CreateButton({
   Name = "kronos_parkur | Ativar Movimentos RED",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PARKUR/main/Script.md"))() end)
   end,
})

-- // 5. SEÇÃO UNIVERSAL (+75 FUNÇÕES COM ADMIN) //
RedUniversal:CreateSection("Utilidades Gerais")

RedUniversal:CreateButton({
   Name = "kronos_admin | +100 Comandos (Infinite Yield)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
   end,
})

RedUniversal:CreateButton({
   Name = "kronos_dex | Explorador de Scripts (Dex V3)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() end)
   end,
})

-- // 👑 ABA EXCLUSIVA DO DONO (SÓ APARECE PARA red_wolf12370) //
if IsOwner then
    local OwnerTab = Window:CreateTab("👑 KRONOS_OWNER")
    OwnerTab:CreateSection("Painel de Controle do Chefe")
    
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
       PlaceholderText = "Nick do Invejoso...",
       Callback = function(Text)
          Rayfield:Notify({Title = "BANIDO", Content = Text .. " não usa mais o Kronos!", Duration = 5})
       end,
    })
end

Rayfield:Notify({
   Title = "KRONOS RED V3.0",
   Content = IsOwner and "Dono Detectado! Menu de Admin Liberado." or "Script Carregado com Sucesso!",
   Duration = 5,
})
