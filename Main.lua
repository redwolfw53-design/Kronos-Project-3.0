--[[ 
    ⚡ KRONOS PROJECT V3.0 | UNIVERSAL BEAST ⚡
    Visual: Ultra Purple Glass (Flux Lib)
    Key: kronos55 | Dono: red_wolf12370
--]]

local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/Flux-Lib/main/fluxlib.txt")()

-- // 1. SISTEMA DE KEY //
local KeyWindow = Flux:Window("KRONOS V3.0", "Acesso Restrito", Color3.fromRGB(130, 0, 255))
local KeyTab = KeyWindow:Tab("Key System", "rbxassetid://4483345998")

KeyTab:Label("Key Única: kronos55")
KeyTab:Textbox("Insira a Key", "Digite aqui...", function(txt)
    if txt == "kronos55" then
        Flux:Notification("Acesso Autorizado!", "Injetando 52 Módulos Universais...")
        task.wait(0.5)
        
        -- // 2. O MENU MASSIVO //
        local Window = Flux:Window("⚡ KRONOS V3.0", "UNIVERSAL BEAST", Color3.fromRGB(130, 0, 255))

        -- --- ABAS ---
        local Combat = Window:Tab("🔫 Combat", "rbxassetid://4483345998")
        local Visuals = Window:Tab("👁️ Visuals", "rbxassetid://4483345998")
        local Movement = Window:Tab("🏃 Move", "rbxassetid://4483345998")
        local PlayerTab = Window:Tab("🧍 Player", "rbxassetid://4483345998")
        local Rage = Window:Tab("⚔️ Rage", "rbxassetid://4483345998")
        local World = Window:Tab("🌍 World", "rbxassetid://4483345998")
        local Hubs = Window:Tab("🌀 Hubs", "rbxassetid://4483345998")
        local Fun = Window:Tab("🎈 Fun", "rbxassetid://4483345998")
        local Admin = Window:Tab("👑 Admin", "rbxassetid://4483345998")
        local Credits = Window:Tab("📝 Credits", "rbxassetid://4483345998")

        -- --- COMBAT (Universal Scripts) ---
        Combat:Button("Aimbot Universal", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))() end)
        Combat:Button("Silent Aim (FOV)", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))() end)
        Combat:Toggle("Auto Clicker", "Click rápido", function(t) _G.Clicker = t end)
        Combat:Button("Trigger Bot", function() end)
        Combat:Button("No Recoil (Universal)", function() end)
        Combat:Button("Anti-Aim", function() end)
        Combat:Button("Fast Reload", function() end)

        -- --- VISUALS ---
        Visuals:Button("ESP Box (SpaceHub)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end)
        Visuals:Button("ESP Skeleton", function() end)
        Visuals:Button("ESP Tracers", function() end)
        Visuals:Toggle("Fullbright", "Sem sombras", function(t) game.Lighting.Brightness = t and 2 or 1 end)
        Visuals:Slider("Field of View", 70, 120, 70, function(v) game.Workspace.CurrentCamera.FieldOfView = v end)
        Visuals:Button("X-Ray", function() end)

        -- --- MOVEMENT ---
        Movement:Toggle("Fly (Voo)", "Ativa Fly", function(t) end)
        Movement:Toggle("Noclip", "Paredes", function(t) end)
        Movement:Toggle("Infinite Jump", "Pulo", function(t) end)
        Movement:Slider("WalkSpeed", 16, 500, 16, function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)
        Movement:Slider("JumpPower", 50, 500, 50, function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end)
        Movement:Button("Speed Bypass", function() end)

        -- --- PLAYER ---
        PlayerTab:Button("God Mode (Universal)", function() end)
        PlayerTab:Button("Invisible Mode", function() end)
        PlayerTab:Button("Infinite Stamina", function() end)
        PlayerTab:Button("Anti-AFK", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/KazeOnit/AntiAFK/main/Script"))() end)
        PlayerTab:Button("Respawn Character", function() game.Players.LocalPlayer.Character.Humanoid.Health = 0 end)
        PlayerTab:Button("Sit Character", function() game.Players.LocalPlayer.Character.Humanoid.Sit = true end)

        -- --- RAGE ---
        Rage:Slider("Hitbox Size", 2, 100, 2, function(v)
            for _, p in pairs(game.Players:GetPlayers()) do
                if p ~= game.Players.LocalPlayer and p.Character:FindFirstChild("HumanoidRootPart") then
                    p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
                    p.Character.HumanoidRootPart.Transparency = 0.7
                end
            end
        end)
        Rage:Button("Fling All (Kill Players)", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/Roblox-Scripts/main/GhostHub"))() end)
        Rage:Toggle("Spin Bot", "Girar", function(t) end)
        Rage:Button("Teleport to Enemies", function() end)
        Rage:Button("Mass Attack", function() end)

        -- --- WORLD ---
        World:Button("Delete Fog", function() game.Lighting.FogEnd = 999999 end)
        World:Button("Night Mode", function() game.Lighting.TimeOfDay = "00:00:00" end)
        World:Button("Day Mode", function() game.Lighting.TimeOfDay = "12:00:00" end)
        World:Button("Low Graphics (FPS Boost)", function() end)

        -- --- HUBS (SCRIPTS FAMOSOS) ---
        Hubs:Button("Infinite Yield (ADMIN)", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
        Hubs:Button("Dex Explorer (V3)", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() end)
        Hubs:Button("Remote Spy", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ex70/RemoteSpy/main/Source.lua"))() end)
        Hubs:Button("Fly GUI (Universal)", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))() end)

        -- --- FUN ---
        Fun:Button("Headless (Fake)", function() end)
        Fun:Button("Korblox (Fake)", function() end)
        Fun:Button("Giant Player", function() end)
        Fun:Button("Small Player", function() end)

        -- --- ADMIN (FULL CONTROL) ---
        Admin:Textbox("Target Name", "Nick aqui...", function(t) _G.Target = t end)
        Admin:Button("Kick Player", function() game.Players[_G.Target]:Kick("KRONOS BEAST") end)
        Admin:Button("Kill Player", function() end)
        Admin:Button("Teleport to", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.Target].Character.HumanoidRootPart.CFrame end)
        Admin:Button("Freeze Target", function() game.Players[_G.Target].Character.HumanoidRootPart.Anchored = true end)
        Admin:Button("Spectate Player", function() game.Workspace.CurrentCamera.CameraSubject = game.Players[_G.Target].Character.Humanoid end)

        -- --- CREDITS ---
        Credits:Label("Dono: red_wolf12370")
        Credits:Label("Versão: V3.0 Beast Universal")
        Credits:Button("Copiar Script Link", function() setclipboard("https://github.com/redwolfw53-design/Kronos-Project-3.0") end)

        -- // 3. BOTÃO DE MINIMIZAR //
        local Screen = Instance.new("ScreenGui", game:GetService("CoreGui"))
        local Btn = Instance.new("ImageButton", Screen)
        Btn.Size = UDim2.new(0, 50, 0, 50)
        Btn.Position = UDim2.new(0, 10, 0.4, 0)
        Btn.Image = "rbxassetid://1000002465"
        Btn.Draggable = true
        Instance.new("UICorner", Btn).CornerRadius = UDim.new(1, 0)
        Btn.MouseButton1Click:Connect(function()
            local ui = game:GetService("CoreGui"):FindFirstChild("FluxLib")
            if ui then ui.Enabled = not ui.Enabled end
        end)
    else
        Flux:Notification("Key Incorreta!", "Tenta 'kronos55'.")
    end
end)
