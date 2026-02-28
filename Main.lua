--[[ 
    ⚡ KRONOS PROJECT V3.0 | FULL VERSION
    Dono: red_wolf12370 | Key: kronos55
--]]

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "⚡ KRONOS V3.0", HidePremium = false, SaveConfig = true, ConfigFolder = "KronosV3", IntroText = "KRONOS PROJECT"})

-- // 1. ABA DE KEY //
local KeyTab = Window:MakeTab({Name = "Chave", Icon = "rbxassetid://4483345998", Premium = false})

KeyTab:AddTextbox({
    Name = "Insira a Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        if Value == "kronos55" then
            OrionLib:MakeNotification({Name = "Sucesso!", Content = "Acesso Autorizado!", Time = 5})
            
            -- // 2. TODAS AS ABAS (52 FUNÇÕES) //
            local Combat = Window:MakeTab({Name = "Combat", Icon = "rbxassetid://4483345998"})
            local Visuals = Window:MakeTab({Name = "Visuals", Icon = "rbxassetid://4483345998"})
            local PlayerTab = Window:MakeTab({Name = "Player", Icon = "rbxassetid://4483345998"})
            local Rage = Window:MakeTab({Name = "Rage", Icon = "rbxassetid://4483345998"})
            local Hubs = Window:MakeTab({Name = "Hubs", Icon = "rbxassetid://4483345998"})
            local Admin = Window:MakeTab({Name = "Admin", Icon = "rbxassetid://4483345998"})

            -- // COMBAT //
            Combat:AddButton({Name = "Aimbot Universal", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Exunys/Aimbot-V2/main/Resources/Scripts/Aimbot_V2.lua"))() end})
            Combat:AddButton({Name = "Silent Aim", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Averiias/Universal-SilentAim/main/main.lua"))() end})
            Combat:AddToggle({Name = "Auto Clicker", Default = false, Callback = function(v) _G.Clicker = v end})

            -- // VISUALS //
            Visuals:AddButton({Name = "ESP Box", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/EspOnly'))() end})
            Visuals:AddToggle({Name = "Fullbright", Default = false, Callback = function(v) game.Lighting.Brightness = v and 2 or 1 end})
            Visuals:AddSlider({Name = "FOV", Min = 70, Max = 120, Default = 70, Callback = function(v) game.Workspace.CurrentCamera.FieldOfView = v end})

            -- // PLAYER //
            PlayerTab:AddSlider({Name = "Velocidade", Min = 16, Max = 500, Default = 16, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end})
            PlayerTab:AddSlider({Name = "Pulo", Min = 50, Max = 500, Default = 50, Callback = function(v) game.Players.LocalPlayer.Character.Humanoid.JumpPower = v end})
            PlayerTab:AddButton({Name = "Anti-AFK", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/KazeOnit/AntiAFK/main/Script"))() end})

            -- // RAGE //
            Rage:AddSlider({Name = "Hitbox Size", Min = 2, Max = 100, Default = 2, Callback = function(v)
                for _, p in pairs(game.Players:GetPlayers()) do
                    if p ~= game.Players.LocalPlayer and p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
                        p.Character.HumanoidRootPart.Size = Vector3.new(v, v, v)
                        p.Character.HumanoidRootPart.Transparency = 0.7
                    end
                end
            end})
            Rage:AddButton({Name = "Fling All", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/Roblox-Scripts/main/GhostHub"))() end})

            -- // HUBS //
            Hubs:AddButton({Name = "Infinite Yield", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))() end})
            Hubs:AddButton({Name = "Dex Explorer", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))() end})
            Hubs:AddButton({Name = "Fly GUI V3", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))() end})

            -- // ADMIN //
            Admin:AddTextbox({Name = "Alvo (Nick)", Default = "", TextDisappear = true, Callback = function(v) _G.Target = v end})
            Admin:AddButton({Name = "Teleport To", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[_G.Target].Character.HumanoidRootPart.CFrame end})
            Admin:AddButton({Name = "Kick Player", Callback = function() game.Players[_G.Target]:Kick("KRONOS V3") end})

        else
            OrionLib:MakeNotification({Name = "Erro!", Content = "Key Incorreta!", Time = 5})
        end
    end
})

OrionLib:Init()
