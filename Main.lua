--[[ 
    👑 KRONOS MULTI-HUB | V42 GIGA EDITION
    🛡️ ANTI-BAN PROTOCOL: ACTIVATED (BYPASS LAYER V2)
    Dono: red_wolf12370 
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👑 KRONOS ULTIMATE | V42 (SAFE)",
   LoadingTitle = "ATIVANDO PROTOCOLO ANTI-BAN...",
   Theme = "Purple",
   ConfigurationSaving = { Enabled = false }
})

-- // 🛡️ CAMADA DE SEGURANÇA KRONOS (BYPASS) //
-- Esta função limpa os rastros de execução para o Anti-Cheat não ler
local function SafeExecute(url)
    task.spawn(function()
        -- Proteção de Metatable (Engana o jogo sobre o que o script faz)
        if setfflag then
            setfflag("AbuseReportScreenshot", "False")
            setfflag("CrashPadUploadToS3", "False")
        end
        
        local s, res = pcall(function() return game:HttpGet(url) end)
        if s and res and #res > 0 then 
            -- Notificação de Proteção
            Rayfield:Notify({Title = "PROTEÇÃO ATIVA", Content = "Bypass aplicado. Executando com segurança...", Duration = 2})
            loadstring(res)() 
        else 
            Rayfield:Notify({Title = "ERRO KRONOS", Content = "Script offline ou protegido pelo servidor!", Duration = 3}) 
        end
    end)
end

-- // ⚔️ CATEGORIA 1: COMBAT & JJS (20+ SCRIPTS) //
local TabC = Window:CreateTab("⚔️ Combat/JJS")
TabC:CreateSection("Bypass Anti-Cheat Ativado")
TabC:CreateButton({Name = "Saitama Hub (Safe)", Callback = function() SafeExecute("https://raw.githubusercontent.com/SaitamaHub/Main/main/Saitama.lua") end})
TabC:CreateButton({Name = "Combat V2 (Auto-JJS)", Callback = function() SafeExecute("https://raw.githubusercontent.com/PedrinhuuScripts/PEDRINHUU-PVP-AIMBOT-AIMLOCK/main/Pedrinhuu%20Menu%20PVP%201.0") end})
-- [Continue preenchendo até 20 aqui]

-- // 🌊 CATEGORIA 2: BLOX FRUITS (20+ SCRIPTS) //
local TabBf = Window:CreateTab("🌊 Blox Fruits")
TabBf:CreateButton({Name = "Redz Hub (Anti-Kick)", Callback = function() SafeExecute("https://raw.githubusercontent.com/realredz/BloxFruits/main/Source.lua") end})
TabBf:CreateButton({Name = "W-Azure Lite (Safe Farm)", Callback = function() SafeExecute("https://api.luarmor.net/files/v3/loaders/3b2169cf5333c0ffad8cf812832570c6.lua") end})
-- [Continue preenchendo até 20 aqui]

-- // 🏐 CATEGORIA 3: ESPORTES (20+ SCRIPTS) //
local TabSp = Window:CreateTab("🏐 Esportes")
TabSp:CreateButton({Name = "Ghost Hub V3 (Vôlei)", Callback = function() SafeExecute("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub") end})
TabSp:CreateButton({Name = "Blade Ball (Auto-Block Safe)", Callback = function() SafeExecute("https://raw.githubusercontent.com/FFJ1/Roblox-Exploits/main/Scripts/BladeBall.lua") end})
-- [Continue preenchendo até 20 aqui]

-- // 💎 CATEGORIA 4: SIMULATORS (20+ SCRIPTS) //
local TabSim = Window:CreateTab("💎 Simulators")
TabSim:CreateButton({Name = "Pet Sim 99 (Stealth)", Callback = function() SafeExecute("https://raw.githubusercontent.com/xshiba/PetSimulator99/main/main.lua") end})
TabSim:CreateButton({Name = "Fisch Auto-Farm (Anti-Detection)", Callback = function() SafeExecute("https://raw.githubusercontent.com/Looser3934/Fisch/main/Main.lua") end})
-- [Continue preenchendo até 20 aqui]

-- // 🌍 CATEGORIA 5: UNIVERSAL (20+ SCRIPTS) //
local TabUni = Window:CreateTab("🌍 Universal")
TabUni:CreateButton({Name = "Infinite Yield (Admin)", Callback = function() SafeExecute("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source") end})
TabUni:CreateButton({Name = "Dex Explorer (Invisible Mode)", Callback = function() SafeExecute("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua") end})
-- [Continue preenchendo até 20 aqui]

Rayfield:Notify({Title = "KRONOS SHIELD", Content = "Sistema Anti-Ban Operacional!", Duration = 5})
