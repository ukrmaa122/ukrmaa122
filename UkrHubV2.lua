-- by ukrman
local ui = Instance.new("ScreenGui")
local background = Instance.new("Frame")
local titleBar = Instance.new("Frame")
local titleLabel = Instance.new("TextLabel")
local minimizeButton = Instance.new("TextButton")
local tabContainer = Instance.new("Frame")
local tabButton1 = Instance.new("TextButton")
local tabButton2 = Instance.new("TextButton")
local tabFrame1 = Instance.new("Frame")
local tabFrame2 = Instance.new("Frame")
local button1 = Instance.new("TextButton")
local button2 = Instance.new("TextButton")
local avtorHubButton = Instance.new("TextButton")
local trollHubButton = Instance.new("TextButton")
local kasHubButton = Instance.new("TextButton")
local emplicButton = Instance.new("TextButton")
local commandInput = Instance.new("TextBox") -- добавил командную строку
local runCommandButton = Instance.new("TextButton") -- добавил кнопку запуска команд

ui.Parent = game.CoreGui

background.Size = UDim2.new(0, 600, 0, 350) -- увеличил размер, чтобы вместить командную строку
background.Position = UDim2.new(0.5, -300, 0.5, -175)
background.BackgroundColor3 = Color3.fromRGB(128, 0, 128) -- фиолетовый фон
background.BackgroundTransparency = 0.7 -- Полу прозрачный фон
background.Parent = ui
background.ZIndex = 1
background.Active = true
background.Draggable = true

titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundColor3 = Color3.fromRGB(75, 0, 130) -- темно-фиолетовый
titleBar.Parent = background
titleBar.ZIndex = 2

titleLabel.Size = UDim2.new(0.9, 0, 1, 0)
titleLabel.Position = UDim2.new(0.05, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "UkrHub V2"
titleLabel.Font = Enum.Font.SourceSans
titleLabel.TextSize = 24
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- белый
titleLabel.Parent = titleBar
titleLabel.ZIndex = 3

minimizeButton.Size = UDim2.new(0.1, 0, 1, 0)
minimizeButton.Position = UDim2.new(0.9, 0, 0, 0)
minimizeButton.Text = "_"
minimizeButton.Font = Enum.Font.SourceSans
minimizeButton.TextSize = 24
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- белый
minimizeButton.BackgroundColor3 = Color3.fromRGB(75, 0, 130)
minimizeButton.Parent = titleBar
minimizeButton.ZIndex = 3

tabContainer.Size = UDim2.new(1, 0, 0, 30)
tabContainer.Position = UDim2.new(0, 0, 0, 30)
tabContainer.BackgroundTransparency = 1
tabContainer.Parent = background
tabContainer.ZIndex = 2

tabButton1.Size = UDim2.new(0.5, 0, 1, 0)
tabButton1.Position = UDim2.new(0, 0, 0, 0)
tabButton1.Text = "Scripts"
tabButton1.Font = Enum.Font.SourceSans
tabButton1.TextSize = 20
tabButton1.TextColor3 = Color3.fromRGB(255, 255, 255) -- белый
tabButton1.BackgroundColor3 = Color3.fromRGB(75, 0, 130)
tabButton1.Parent = tabContainer
tabButton1.ZIndex = 3

tabButton2.Size = UDim2.new(0.5, 0, 1, 0)
tabButton2.Position = UDim2.new(0.5, 0, 0, 0)
tabButton2.Text = "Script search"
tabButton2.Font = Enum.Font.SourceSans
tabButton2.TextSize = 20
tabButton2.TextColor3 = Color3.fromRGB(255, 255, 255) -- белый
tabButton2.BackgroundColor3 = Color3.fromRGB(75, 0, 130)
tabButton2.Parent = tabContainer
tabButton2.ZIndex = 3

tabFrame1.Size = UDim2.new(1, 0, 1, -60)
tabFrame1.Position = UDim2.new(0, 0, 0, 60)
tabFrame1.BackgroundTransparency = 1
tabFrame1.Parent = background
tabFrame1.ZIndex = 2

tabFrame2.Size = UDim2.new(1, 0, 1, -60)
tabFrame2.Position = UDim2.new(0, 0, 0, 60)
tabFrame2.BackgroundTransparency = 1
tabFrame2.Parent = background
tabFrame2.ZIndex = 2
tabFrame2.Visible = false

-- Командная строка
commandInput.Size = UDim2.new(0.3, -10, 0.1, -5)
commandInput.Position = UDim2.new(0.7, 5, 0, 5)
commandInput.PlaceholderText = "Введите команду Infinite Yield"
commandInput.Font = Enum.Font.SourceSans
commandInput.TextSize = 20
commandInput.TextColor3 = Color3.fromRGB(0, 0, 0) -- черный
commandInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- белый
commandInput.Parent = background
commandInput.ZIndex = 4

-- Кнопка запуска команды
runCommandButton.Size = UDim2.new(0.3, -10, 0.1, -5)
runCommandButton.Position = UDim2.new(0.7, 5, 0, 40)
runCommandButton.Text = "Запустить"
runCommandButton.Font = Enum.Font.SourceSans
runCommandButton.TextSize = 20
runCommandButton.TextColor3 = Color3.fromRGB(255, 255, 255) -- белый
runCommandButton.BackgroundColor3 = Color3.fromRGB(75, 0, 130)
runCommandButton.Parent = background
runCommandButton.ZIndex = 4

runCommandButton.MouseButton1Click:Connect(function()
local command = commandInput.Text
-- вставьте ваш код для обработки команды Infinite Yield здесь
print("Выполнена команда: " .. command)
end)

local isMinimized = false

function onMinimizeClick()
isMinimized = not isMinimized
if isMinimized then
background.Visible = false
titleBar.Size = UDim2.new(0, 500, 0, 30)
titleBar.Position = UDim2.new(0.5, -250, 0, 0) -- переместить в центр сверху
else
background.Visible = true
titleBar.Size = UDim2.new(1, 0, 0, 30)
titleBar.Position = UDim2.new(0, 0, 0, 0)
end
end

minimizeButton.MouseButton1Click:Connect(onMinimizeClick)

function onTabClick1()
tabFrame1.Visible = true
tabFrame2.Visible = false
end

function onTabClick2()
tabFrame1.Visible = false
tabFrame2.Visible = true
end

tabButton1.MouseButton1Click:Connect(onTabClick1)
tabButton2.MouseButton1Click:Connect(onTabClick2)

-- создаем кнопки и добавляем их на первый фрейм
button1.Size = UDim2.new(0.5, -5, 0.1, -5)
button1.Position = UDim2.new(0, 5, 0, 5)
button1.Text = "UkrHub (old)"
button1.Font = Enum.Font.SourceSans
button1.TextSize = 20
button1.TextColor3 = Color3.fromRGB(0, 0, 0) -- черный
button1.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- белый
button1.Parent = tabFrame1
button1.ZIndex = 4

button2.Size = UDim2.new(0.5, -5, 0.1, -5)
button2.Position = UDim2.new(0.5, 0, 0, 5)
button2.Text = "UkrHub mini (old)"
button2.Font = Enum.Font.SourceSans
button2.TextSize = 20
button2.TextColor3 = Color3.fromRGB(0, 0, 0) -- черный
button2.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- белый
print("Loaded C00lgui")
loadstring(game:HttpGet('https://sirius.menu/script'))()
print("Sirus menu loaded")
loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
print("Loaded Troll hub")
wait(1)
print("UkrKid Pack Loaded")
end

function executeUkrHubMiniOld()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
print("Loaded INF YUI")
loadstring(game:HttpGet('https://sirius.menu/script'))()
print("Sirus menu loaded")
end

function executeKasHub()
loadstring(game:HttpGet("https://raw.githubusercontent.com/KaSpEr-tv123/kas-hub-script/main/script.lua"))()
end

function executeEmplic()
loadstring(game:HttpGet("https://raw.githubusercontent.com/offperms/doomspire/main/script4eagl", true))()
end

function executeAvtorHub()
loadstring(game:HttpGet('https://raw.githubusercontent.com/Avtor1zaTion/Avtor/main/AvtorHub'))()
end

function executeTrollHub()
loadstring(game:HttpGet("https://raw.githubusercontent.com/yofriendfromschool1/Sky-Hub/main/FE%20Trolling%20GUI.luau"))()
end

button1.MouseButton1Click:Connect(executeUkrHubOld)
button2.MouseButton1Click:Connect(executeUkrHubMiniOld)
kasHubButton.MouseButton1Click:Connect(executeKasHub)
emplicButton.MouseButton1Click:Connect(executeEmplic)
avtorHubButton.MouseButton1Click:Connect(executeAvtorHub)
trollHubButton.MouseButton1Click:Connect(executeTrollHub)
