--[[ 
    ⚡ KRONOS RED PROJECT V3.0 | THE GOD VERSION
    Dono: red_wolf12370 | Somente o Dono pula a Key
--]]

local Player = game.Players.LocalPlayer
local IsOwner = (Player.Name == "red_wolf12370" or Player.UserId == 6046467475)

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "⚡ KRONOS RED V3.0",
   LoadingTitle = "Carregando Scripts de Elite...",
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
local RedUniversal = Window:CreateTab("🌀 kronos_universal")

-- // 1. SEÇÃO PVP (SCRIPTS FAMOSOS QUE ABREM INTERFACE) //
RedPVP:CreateSection("Combate de Elite")

RedPVP:CreateButton({
   Name = "kronos_aimbot | Aimbot & Hitbox (Solaris Hub)",
   Callback = function()
      -- Este abre um menu próprio com Aimbot e Hitbox funcional
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/toasty-dev/Solaris/main/Solaris.lua"))() end)
      Rayfield:Notify({Title = "KRONOS", Content = "Iniciando Solaris Hub...", Duration = 3})
   end,
})

RedPVP:CreateButton({
   Name = "kronos_combat | Silent Aim & PVP (OwlHub)",
   Callback = function()
      -- O OwlHub é o mais famoso para tiro certeiro
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))() end)
   end,
})

-- // 2. SEÇÃO VISUALS (ESP QUE REALMENTE APARECE) //
RedVisuals:CreateSection("Espionagem Visual")

RedVisuals:CreateButton({
   Name = "kronos_esp | Ver tudo pelas paredes (EZ Hub)",
   Callback = function()
      -- EZ Hub tem o melhor ESP colorido que aparece na hora
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/debug101/EZ-Hub/main/EZ_Hub.lua"))() end)
   end,
})

-- // 3. SEÇÃO MONEY (SEU NOME, SUA MARCA) //
RedMoney:CreateSection("Auto-Farm Dinheiro")

RedMoney:CreateButton({
   Name = "kronos_money | Iniciar Farm RED",
   Callback = function()
      Rayfield:Notify({Title = "KRONOS", Content = "Iniciando Sistema kronos_money...", Duration = 5})
      pcall(function() loadstring(game:HttpGet("https://raw.githubusercontent.com/PedrinhuuScripts/KHAOS-MONEY-V1/main/Script.md"))() end)
   end,
})

-- // 4. UNIVERSAL (+75 FUNÇÕES COM ADMIN) //
RedUniversal:CreateButton({
   Name = "kronos_admin | +100 Comandos (Infinite Yield)",
   Callback = function()
      pcall(function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
   end,
})

-- // 👑 ABA EXCLUSIVA: SÓ VOCÊ (red_wolf12370) PODE VER //
if IsOwner then
    local OwnerTab = Window:CreateTab("👑 KRONOS_OWNER")
    OwnerTab:CreateSection("Controle Total")
    
    OwnerTab:CreateButton({
       Name = "kronos_kickall | Expulsar todos do servidor",
       Callback = function()
          for _, v in pairs(game.Players:GetPlayers()) do
             if v ~= Player then v:Kick("KRONOS RED: O Dono encerrou o servidor.") end
          end
       end,
    })
end

Rayfield:Notify({
   Title = "KRONOS RED V3.0",
   Content = IsOwner and "Dono Detectado! Acesso ADM Liberado." or "Script Carregado!",
   Duration = 5,
})
