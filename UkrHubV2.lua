-- by ukrman
local ui = Instance.new("ScreenGui")
local background = Instance.new("Frame")
local titleBar = Instance.new("Frame")
local titleLabel = Instance.new("TextLabel")
local createdByLabel = Instance.new("TextLabel") -- добавляем новый текстовый элемент
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

ui.Parent = game.CoreGui

background.Size = UDim2.new(0, 500, 0, 350)
background.Position = UDim2.new(0.5, -250, 0.5, -175)
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

titleLabel.Size = UDim2.new(0.7, 0, 1, 0)
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

-- текстовое поле "By UKRMAN"
createdByLabel.Size = UDim2.new(0, 100, 0, 20)
createdByLabel.Position = UDim2.new(0, 10, 1, -30) -- Левый нижний угол окна
createdByLabel.BackgroundTransparency = 1
createdByLabel.Text = "By UKRMAN"
createdByLabel.Font = Enum.Font.SourceSans
createdByLabel.TextSize = 12
createdByLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- белый
createdByLabel.Parent = background
createdByLabel.ZIndex = 3

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
button2.Parent = tabFrame1
button2.ZIndex = 4

-- добавляем кнопку Kas hub
kasHubButton.Size = UDim2.new(0.5, -5, 0.1, -5)
kasHubButton.Position = UDim2.new(0, 5, 0, 5)
kasHubButton.Text = "Kas hub"
kasHubButton.Font = Enum.Font.SourceSans
kasHubButton.TextSize = 20
kasHubButton.TextColor3 = Color3.fromRGB(0, 0, 0) -- черный
kasHubButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- белый
kasHubButton.Parent = tabFrame2
kasHubButton.ZIndex = 4

-- добавляем кнопку Emplic с описанием doomspire
emplicButton.Size = UDim2.new(0.5, -5, 0.1, -5)
emplicButton.Position = UDim2.new(0, 5, 0, 55)
emplicButton.Text = "Emplic (doomspire)"
emplicButton.Font = Enum.Font.SourceSans
emplicButton.TextSize = 20
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
