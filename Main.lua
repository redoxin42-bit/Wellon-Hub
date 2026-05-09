-- Wellon | CLOSE
-- [ Инициализация системы ]

local success, Library = pcall(function()
    return loadstring(game:HttpGet("https://raw.githubusercontent.com/Stealthv2/VellureLib/main/Lib.lua"))()
end)

if not success or not Library then
    warn("FRAERWASTED ERROR: Не удалось загрузить библиотеку GUI. Проверь интернет или ссылку.")
    return
end

local Window = Library:CreateWindow({
    Name = "Wellon | CLOSE",
    Color = Color3.fromRGB(45, 30, 60), -- Тот самый темно-фиолетовый
    Bind = Enum.KeyCode.RightControl
})

-- Вкладка Home
local HomeTab = Window:CreateTab("Home", "rbxassetid://4483345998")
HomeTab:CreateToggle("Auto Raid", function(state) _G.AutoRaid = state end)
HomeTab:CreateButton("Raid Shop", function() 
    print("Открытие Raid Shop...")
    -- Здесь должен быть твой RemoteEvent для магазина
end)

-- Вкладка Visuals (Глазик)
local VisualTab = Window:CreateTab("Visuals", "rbxassetid://4483345998")
VisualTab:CreateToggle("Auto Farm NPC", function(state) _G.Farm = state end)

-- Секция скиллов
local SkillPanel = VisualTab:CreateSection("Auto Skills")
local Keys = {"R", "Z", "E", "X", "C", "V"}
for _, key in pairs(Keys) do
    SkillPanel:CreateToggle("Use " .. key, function(state) _G["Skill"..key] = state end)
end

print("Wellon Hub успешно загружен!")
