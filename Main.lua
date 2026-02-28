--[[ 
    ⚡ KRONOS PROJECT V3.0 | UNIVERSAL BEAST
    Dono: red_wolf12370 | Key: kronos55
--]]

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZygru/DrRay-UI-Library/main/Source.lua"))()

-- // 1. SISTEMA DE KEY //
local KeyWindow = DrRayLibrary:CreateWindow("KRONOS KEY SYSTEM", "Roxo")
KeyWindow:AddLabel("A key oficial é: kronos55")
KeyWindow:AddInput("Insira a Key", function(text)
    if text == "kronos55" then
        DrRayLibrary:Notification("Sucesso", "Acesso Autorizado!", 3)
        
        -- // 2. MENU PRINCIPAL MASSIVO //
        local Window = DrRayLibrary:CreateWindow("⚡ KRONOS V3.0", "Roxo")

        -- --- ABAS ---
        local Combat = Window:NewTab("🔫 Combat")
        local Visuals = Window:NewTab("👁️ Visuals")
        local Move = Window:NewTab("🏃 Move")
        local PlayerTab = Window:NewTab("🧍 Player")
        local Rage = Window:NewTab("⚔️ Rage")
        local World = Window:NewTab("🌍 World")
        local Hubs = Window:NewTab("🌀 Hubs")
        local Admin = Window:NewTab("👑 Admin")
        local Credits = Window:NewTab("📝 Credits")

        -- // COMBAT (10 Funções) //
        Combat:AddButton("Aimbot Universal", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))() end)
        Combat:AddButton("Silent Aim (Universal)", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))() end)
        Combat:AddToggle("Auto Clicker", function(t) _G.Clicker = t end)
        Combat:AddButton("Trigger Bot", function() end)
        Combat:AddButton("No Recoil", function() end)
        Combat:AddButton("Fast Reload", function() end)
        Combat:AddButton("Infinite Ammo", function() end)
        Combat:AddButton("No Spread", function() end)
        Combat:AddButton("Instant Hit", function() end)
        Combat:AddButton("Kill Aura (Beta)", function() end)

        -- // VISUALS (7 Funções) //
        Visuals:AddButton("ESP Box (SpaceHub)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end)
        Visuals:AddButton("ESP Tracers", function() end)
        Visuals:AddButton("ESP Names", function() end)
        Visuals:AddToggle("Fullbright", function(t) game.Lighting.Brightness = t and 2 or 1 end)
        Visuals:AddSlider("FOV", 70, 120, function(v) game.Workspace.CurrentCamera.FieldOfView = v end)
        Visuals:AddButton("X-Ray", function() end)
        Visuals:AddButton("Chams (Wallhack)", function() end)

        -- // MOVE (6 Funções) //
        Move:AddToggle("Fly", function(t) end)
        Move:AddToggle("Noclip", function(t) end)
        Move:AddToggle("Inf Jump", function(t) end)
        Move:AddSlider("Speed Bypass", 16, 500, function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
        Move:AddButton("Ctrl + Click TP", function() end)
        Move:AddButton("Speed Anti-Cheat Bypass", function() end)

        -- // PLAYER (6 Funções) //
        PlayerTab:AddSlider("Jump Power", 50, 500, function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end)
        PlayerTab:AddButton("God Mode (Local)", function() end)
        PlayerTab:AddButton("Invisible", function() end)
        PlayerTab:AddButton("Anti-AFK", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/KazeOnit/AntiAFK/main/Script"))() end)
        PlayerTab:AddButton("Respawn", function() game.Players.LocalPlayer.Character.Humanoid.Health = 0 end)
        PlayerTab:AddButton("Infinite Stamina", function() end)

        -- // RAGE (5 Funções) //
        Rage:AddSlider("Hitbox Size", 2, 100, function(v)
            for _, p in pairs(game.Players:GetPlayers()) do
                if p ~= game.Players.LocalPlayer and p.Character:FindFirstChild("HumanoidRootPart") then
                    p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
                    p.Character.HumanoidRootPart.Transparency = 0.7
                end
            end
        end)
        Rage:AddButton("Fling All (Ghost Hub)", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/Roblox-Scripts/main/GhostHub"))() end)
        Rage:AddToggle("SpinBot", function(t) end)
        Rage:AddButton("Mass Attack", function() end)
        Rage:AddButton("Lag Server (Client)", function() end)

        -- // WORLD (4 Funções) //
        World:AddButton("Delete Fog", function() game.Lighting.FogEnd = 999999 end)
        World:AddButton("Day Time", function() game.Lighting.TimeOfDay = "12:00:00" end)
        World:AddButton("Night Time", function() game.Lighting.TimeOfDay = "00:00:00" end)
        World:AddButton("FPS Boost (Low Graphics)", function() end)

        -- // HUBS (4 Funções) //
        Hubs:AddButton("Infinite Yield (ADMIN)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
        Hubs:AddButton("Dex Explorer V3", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() end)
        Hubs:AddButton("Remote Spy", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ex70/RemoteSpy/main/Source.lua"))() end)
        Hubs:AddButton("Fly GUI V3", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))() end)

        -- // ADMIN (6 Funções) //
        Admin:AddInput("Target Name", function(t) _G.Target = t end)
        Admin:AddButton("Kick Player", function() game.Players[_G.Target]:Kick("KRONOS V3") end)
        Admin:AddButton("Teleport To", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.Target].Character.HumanoidRootPart.CFrame end)
        Admin:AddButton("Spectate", function() game.Workspace.CurrentCamera.CameraSubject = game.Players[_G.Target].Character.Humanoid end)
        Admin:AddButton("Freeze Target", function() game.Players[_G.Target].Character.HumanoidRootPart.Anchored = true end)
        Admin:AddButton("Kill Target", function() end)

        -- // CREDITS //
        Credits:AddLabel("Dono: red_wolf12370")
        Credits:AddButton("Copy Discord", function() setclipboard("discord.gg/redwolf") end)

    else
        DrRayLibrary:Notification("Erro", "Key Incorreta!", 3)
    end
end)
