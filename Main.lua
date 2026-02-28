--[[ 
    ⚡ KRONOS PROJECT V3.0 | DRRAY EDITION
    Foco: 100% Funcional no Delta
    Dono: red_wolf12370 | Key: kronos55
--]]

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZygru/DrRay-UI-Library/main/Source.lua"))()

-- // 1. SISTEMA DE KEY //
local KeyWindow = DrRayLibrary:CreateWindow("KRONOS KEY SYSTEM", "Roxo")
KeyWindow:AddLabel("Key: kronos55")
KeyWindow:AddInput("Insira a Key", function(text)
    if text == "kronos55" then
        DrRayLibrary:Notification("Sucesso", "Acesso Autorizado!", 3)
        
        -- // 2. MENU PRINCIPAL //
        local Window = DrRayLibrary:CreateWindow("⚡ KRONOS V3.0 | BEAST", "Roxo")

        -- --- ABAS ---
        local Combat = Window:NewTab("🔫 Combat")
        local Visuals = Window:NewTab("👁️ Visuals")
        local PlayerTab = Window:NewTab("🧍 Player")
        local Rage = Window:Tab("⚔️ Rage")
        local Admin = Window:NewTab("👑 Admin")
        local Credits = Window:NewTab("📝 Credits")

        -- // COMBAT //
        Combat:AddButton("Aimbot Universal", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))() end)
        Combat:AddButton("Silent Aim", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))() end)
        Combat:AddToggle("Auto Clicker", function(state) _G.Clicker = state end)

        -- // VISUALS //
        Visuals:AddButton("ESP Box", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end)
        Visuals:AddToggle("Fullbright", function(state) game.Lighting.Brightness = state and 2 or 1 end)

        -- // PLAYER //
        PlayerTab:AddSlider("WalkSpeed", 16, 500, function(value) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value end)
        PlayerTab:AddSlider("JumpPower", 50, 500, function(value) game.Players.LocalPlayer.Character.Humanoid.JumpPower = value end)
        PlayerTab:AddButton("Infinite Yield", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)

        -- // RAGE //
        Rage:AddSlider("Hitbox Size", 2, 100, function(v)
            for _, p in pairs(game.Players:GetPlayers()) do
                if p ~= game.Players.LocalPlayer and p.Character:FindFirstChild("HumanoidRootPart") then
                    p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
                    p.Character.HumanoidRootPart.Transparency = 0.7
                end
            end
        end)

        -- // ADMIN //
        Admin:AddInput("Target Nick", function(t) _G.Target = t end)
        Admin:AddButton("Kick Player", function() game.Players[_G.Target]:Kick("KRONOS V3") end)
        Admin:AddButton("Teleport to", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.Target].Character.HumanoidRootPart.CFrame end)

        -- // CREDITS //
        Credits:AddLabel("Dono: red_wolf12370")
        Credits:AddButton("Copiar Discord", function() setclipboard("discord.gg/redwolf") end)

    else
        DrRayLibrary:Notification("Erro", "Key Incorreta!", 3)
    end
end)
