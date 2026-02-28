--[[ 
    ⚡ KRONOS PROJECT V3.0 | THE UNIVERSAL BEAST
    Dono: red_wolf12370
    Key: kronos55
--]]

-- Proteção para não carregar o menu duas vezes
if game:GetService("CoreGui"):FindFirstChild("FluxLib") then
    game:GetService("CoreGui"):FindFirstChild("FluxLib"):Destroy()
end

local Flux = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/Flux-Lib/main/fluxlib.txt")()

-- // 1. SISTEMA DE KEY //
local KeyWindow = Flux:Window("KRONOS V3.0", "Verificação", Color3.fromRGB(130, 0, 255))
local KeyTab = KeyWindow:Tab("Key", "rbxassetid://4483345998")

KeyTab:Label("A key é: kronos55")
KeyTab:Textbox("Insira a Key", "Digite aqui...", function(txt)
    if txt == "kronos55" then
        Flux:Notification("Sucesso!", "Acesso Autorizado.")
        KeyWindow:Destroy() -- Fecha a janela de key após o acerto
        task.wait(0.2)
        
        -- // 2. O MENU PRINCIPAL //
        local Window = Flux:Window("⚡ KRONOS V3.0", "UNIVERSAL BEAST", Color3.fromRGB(130, 0, 255))

        -- --- ABAS ---
        local Combat = Window:Tab("Combat", "rbxassetid://4483345998")
        local Visuals = Window:Tab("Visuals", "rbxassetid://4483345998")
        local Move = Window:Tab("Move", "rbxassetid://4483345998")
        local PlayerTab = Window:Tab("Player", "rbxassetid://4483345998")
        local Rage = Window:Tab("Rage", "rbxassetid://4483345998")
        local World = Window:Tab("World", "rbxassetid://4483345998")
        local Hubs = Window:Tab("Hubs", "rbxassetid://4483345998")
        local Fun = Window:Tab("Fun", "rbxassetid://4483345998")
        local Admin = Window:Tab("Admin", "rbxassetid://4483345998")
        local Credits = Window:Tab("Credits", "rbxassetid://4483345998")

        -- // COMBAT //
        Combat:Button("Aimbot Universal", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))() end)
        Combat:Button("Silent Aim", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))() end)
        Combat:Toggle("Auto Clicker", "Ativa o click rápido", function(t) _G.Clicker = t end)
        Combat:Button("No Recoil", function() end)
        Combat:Button("Trigger Bot", function() end)

        -- // VISUALS //
        Visuals:Button("ESP Box", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end)
        Visuals:Toggle("Fullbright", "Ver no escuro", function(t) game:GetService("Lighting").Brightness = t and 2 or 1 end)
        Visuals:Slider("Field of View", 70, 120, 70, function(v) game.Workspace.CurrentCamera.FieldOfView = v end)

        -- // MOVE //
        Move:Toggle("Fly", "Voo", function(t) end)
        Move:Slider("Speed", "Velocidade", 16, 500, 16, function(s) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s end)
        Move:Slider("Jump", "Pulo", 50, 500, 50, function(s) game.Players.LocalPlayer.Character.Humanoid.JumpPower = s end)
        Move:Toggle("Inf Jump", "Pulo Infinito", function(t) end)

        -- // RAGE //
        Rage:Slider("Hitbox Size", 2, 100, 2, function(v)
            for _, p in pairs(game.Players:GetPlayers()) do
                if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                    p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
                    p.Character.HumanoidRootPart.Transparency = 0.7
                end
            end
        end)
        Rage:Button("Fling All", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/Roblox-Scripts/main/GhostHub"))() end)

        -- // HUBS //
        Hubs:Button("Infinite Yield", function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end)
        Hubs:Button("Dex Explorer", function() loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() end)

        -- // ADMIN //
        Admin:Textbox("Target Name", "Nick...", function(t) _G.Target = t end)
        Admin:Button("Kick Player", function() game.Players[_G.Target]:Kick("KRONOS V3") end)
        Admin:Button("TP To", function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.Target].Character.HumanoidRootPart.CFrame end)

        -- // CREDITS //
        Credits:Label("Dono: red_wolf12370")
        Credits:Button("Copiar Discord", function() setclipboard("discord.gg/redwolf") end)

        -- // 3. BOTÃO DE MINIMIZAR //
        local Screen = Instance.new("ScreenGui", game:GetService("CoreGui"))
        local Btn = Instance.new("ImageButton", Screen)
        Btn.Size = UDim2.new(0, 50, 0, 50)
        Btn.Position = UDim2.new(0, 10, 0.4, 0)
        Btn.Image = "rbxassetid://1000002465" -- TUA LOGO
        Btn.Draggable = true
        Instance.new("UICorner", Btn).CornerRadius = UDim.new(1, 0)
        
        Btn.MouseButton1Click:Connect(function()
            local ui = game:GetService("CoreGui"):FindFirstChild("FluxLib")
            if ui then ui.Enabled = not ui.Enabled end
        end)
    else
        Flux:Notification("Key Errada!", "Tente novamente.")
    end
end)
