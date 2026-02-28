--[[ 
    😈 KRONOS PT V18.0 | GENGAR SHADOW (NPC MAGNET & MASS KILL)
    Dono: red_wolf12370 
    Tema: Gengar Shadow (Roxo & Preto)
    Chave: KRONOS
--]]

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "😈 KRONOS PT V18.0 | MAGNET GOD",
   LoadingTitle = "INICIALIZANDO ÍMÃ DE NPCs...",
   Theme = "Purple",
   KeySystem = true, 
   KeySettings = {
      Title = "🔑 KRONOS KEY",
      Key = {"KRONOS"}
   }
})

-- // MOTOR DE MAGNETIZAÇÃO //
_G.NPCMagnet = false
_G.AutoAttack = false
_G.MagnetPos = nil

-- // FUNÇÃO PARA PEGAR TODOS OS NPCs //
local function GetAllNPCs()
    local Enemies = {}
    for _, v in pairs(workspace:GetDescendants()) do
        if v:IsA("Humanoid") and v.Parent:FindFirstChild("HumanoidRootPart") and v.Health > 0 then
            if not game.Players:GetPlayerFromCharacter(v.Parent) then
                table.insert(Enemies, v.Parent)
            end
        end
    end
    return Enemies
end

-- // 🌀 ABA: MAGNET FARM (A ESTRATÉGIA SUPREMA) //
local TabMagnet = Window:CreateTab("🌀 Magnet Farm")

TabMagnet:CreateSection("Controle do Ímã")

TabMagnet:CreateToggle({
   Name = "ATIVAR ÍMÃ DE NPCs (Puxar Todos)",
   CurrentValue = false,
   Callback = function(Value)
      _G.NPCMagnet = Value
      if Value then
         -- Define o ponto onde os NPCs vão ficar (Exatamente onde você está agora)
         _G.MagnetPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -8, 0)
         
         spawn(function()
            while _G.NPCMagnet do
               pcall(function()
                  local npcs = GetAllNPCs()
                  for _, npc in pairs(npcs) do
                     -- Puxa o NPC para baixo de você
                     npc.HumanoidRootPart.CFrame = _G.MagnetPos
                     npc.HumanoidRootPart.Velocity = Vector3.new(0,0,0) -- Impede que eles saiam voando
                  end
                  -- Mantém você flutuando em cima deles com segurança
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = _G.MagnetPos * CFrame.new(0, 12, 0)
               end)
               task.wait(0.1)
            end
         end)
      end
   end,
})

TabMagnet:CreateToggle({
   Name = "ATAQUE AUTOMÁTICO (Kill Aura)",
   CurrentValue = false,
   Callback = function(Value)
      _G.AutoAttack = Value
      spawn(function()
         while _G.AutoAttack do
            pcall(function()
               local tool = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
               if tool then
                  tool:Activate() -- Ataca
                  local npcs = GetAllNPCs()
                  for _, npc in pairs(npcs) do
                     -- Força o dano em massa no bolo de NPCs
                     firetouchinterest(tool.Handle, npc.HumanoidRootPart, 0)
                     firetouchinterest(tool.Handle, npc.HumanoidRootPart, 1)
                  end
               end
            end)
            task.wait(0.01)
         end
      end)
   end,
})

-- // 🛡️ ABA: SURVIVAL //
local TabSurvival = Window:CreateTab("🛡️ Survival")

TabSurvival:CreateButton({
   Name = "Plataforma de Segurança",
   Callback = function()
      local p = Instance.new("Part", workspace)
      p.Size = Vector3.new(20, 1, 20)
      p.Anchored = true
      p.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -3.5, 0)
      p.Transparency = 0.5
      p.Color = Color3.fromRGB(138, 43, 226) -- Roxo Gengar
   end,
})

-- // 📜 CRÉDITOS //
local TabCredits = Window:CreateTab("📜 Sala do Gengar")
TabCredits:CreateLabel("👑 Dono: red_wolf12370")
TabCredits:CreateParagraph({Title = "COMO USAR:", Content = "1. Vá para um lugar aberto.\n2. Ligue o ÍMÃ (NPCs vão brotar debaixo de você).\n3. Ligue o ATAQUE AUTOMÁTICO.\n4. Fique rico."})

Rayfield:Notify({Title = "KRONOS V18 MAGNET", Content = "Ímã pronto para o massacre!", Duration = 5})
