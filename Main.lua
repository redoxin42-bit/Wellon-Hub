-- FRAERWASTED UNLOCKER / Режим Opus 4.7 Pro
-- Wellon | CLOSE (100% Matching Colors)

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Stealthv2/VellureLib/main/Lib.lua"))()
local Window = Library:CreateWindow({
    Name = "Wellon | CLOSE",
    Color = Color3.fromRGB(45, 30, 60), -- Точный темно-фиолетовый
    Bind = Enum.KeyCode.RightControl
})

-- [1] ВКЛАДКА HOME (РЕЙДЫ)
local HomeTab = Window:CreateTab("Home", "rbxassetid://4483345998")
HomeTab:CreateToggle("Auto Raid", function(state) _G.AutoRaid = state end)
HomeTab:CreateToggle("Auto Again Raid", function(state) _G.AutoAgain = state end)
HomeTab:CreateToggle("Auto Join Raid", function(state) _G.AutoJoin = state end)
HomeTab:CreateDropdown("Select Raid", {"Death 13", "Dio", "Dio TWOH", "Kira", "Diavolo", "Jotaro"}, function(val) _G.SelectedRaid = val end)
HomeTab:CreateButton("Raid Shop", function() 
    -- Вызов удаленного магазина рейдов через RemoteEvent
    game:GetService("ReplicatedStorage").Remotes.RaidShop:FireServer() 
end)

-- [2] ВКЛАДКА VISUALS (ГЛАЗИК)
local VisualTab = Window:CreateTab("Visuals", "rbxassetid://4483345998")
VisualTab:CreateToggle("Auto World Event", function(state) _G.WorldEvent = state end)
VisualTab:CreateToggle("Auto Farm NPC", function(state) _G.Farm = state end)
VisualTab:CreateToggle("Auto Quest (Story)", function(state) _G.Story = state end)
VisualTab:CreateButton("Prestige (10k/50Lvl)", function() --[[ Logic ]] end)

-- [3] ВКЛАДКА COMBAT (ELITE ADDITIONS)
local CombatTab = Window:CreateTab("Combat", "rbxassetid://4483367558")
CombatTab:CreateToggle("Silent Aim", function(state) _G.SilentAim = state end)
CombatTab:CreateToggle("No Stun", function(state) _G.NoStun = state end)
CombatTab:CreateToggle("Auto Block", function(state) _G.AutoBlock = state end)
CombatTab:CreateSlider("WalkSpeed", 16, 250, 16, function(v) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v end)

-- ПАНЕЛЬ СКИЛЛОВ (ВНУТРИ VISUALS)
local SkillPanel = VisualTab:CreateSection("Auto Skills")
local Keys = {"R", "Z", "E", "X", "C", "V"}
for _, key in pairs(Keys) do
    SkillPanel:CreateToggle("Use " .. key, function(state) _G["Skill"..key] = state end)
end
