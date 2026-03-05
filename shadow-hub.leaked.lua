-- ShadowHub LEAK BY SUNZER DMYTRIEVSKIY | https://discord.gg/pXMnnt3bP3
-- Feature: Spectate, White Border, ALL TEXT WHITE, ESP (Xray/Names), Gravity Keybind, Dual Names, REMOVED WEBHOOK AND LOGGER SYKA
-- UPDATE: ACCENT IS NOW WHITE (Monochrome Theme)
-- UPDATE 30 (Fix): Full Working Version

-- WEBHOOK URL ПОШЕЛ НАХУЙ НИКАКОГО ВЕБХУКА НЕ БУДЕТ

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")
local TS = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local LP = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- Поддержка разных функций запроса
local request = request or http_request or syn.request or fluxus.request

-- === АВТОЛОГГЕР Я НАХУЙ ВЫРЕЗАЛ SHADOWHUB ВЫ ПОАХУЕВАЛИ ЧЁТА ===

task.spawn(function()
    task.wait(1)
    print("SHADOWHUB LEAK BY SUNZER DMYTRIEVSKIY | VISIT SUNZWAVE DISCORD SERVER")
	print("BIGHVH DISCORD SERVER - https://dsc.gg/bighvh")
	print("SUNZWAVE DISCORD SERVER - https://discord.gg/pXMnnt3bP3")
	print("SUNZER FAKECRIME BIO - https://fakecrime.bio/sunzer")
	print("")
	print("")
	print("")
	print("")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
	print("nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you nobody follows you")
end)

-- ===== АНТИКИК =====
pcall(function()
    local old
    old = hookmetamethod(game, "__namecall", function(self, ...)
        local method = getnamecallmethod()
        if method == "Kick" and self == LP then return end
        if method == "FireServer" or method == "InvokeServer" then
            local n = self.Name:lower()
            if n:find("ban") or n:find("detect") or n:find("cheat") or n:find("security") then
                return
            end
        end
        return old(self, ...)
    end)
end)

-- ===== НАСТРОЙКИ UI =====
local Theme = {
    Bg = Color3.fromRGB(18, 18, 24),
    ItemBg = Color3.fromRGB(30, 30, 40),
    Accent = Color3.fromRGB(255, 255, 255), 
    Text = Color3.fromRGB(255, 255, 255), 
    SubText = Color3.fromRGB(200, 200, 200),
    Stroke = Color3.fromRGB(255, 255, 255)
}

local function Tween(obj, props, time)
    TS:Create(obj, TweenInfo.new(time or 0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), props):Play()
end

-- ===== СОЗДАНИЕ GUI =====
local Gui = Instance.new("ScreenGui")
Gui.Name = "ShadowHub_Premium"
Gui.ResetOnSpawn = false
pcall(function() Gui.Parent = CoreGui end)
if not Gui.Parent then Gui.Parent = LP:WaitForChild("PlayerGui") end

-- Главный Фрейм
local Main = Instance.new("Frame")
Main.Size = UDim2.new(0, 420, 0, 320)
Main.Position = UDim2.new(0.5, -210, 0.5, -160)
Main.BackgroundColor3 = Theme.Bg
Main.BorderSizePixel = 0
Main.Active = true
Main.Draggable = true
Main.Parent = Gui

Instance.new("UICorner", Main).CornerRadius = UDim.new(0, 10)

-- ОБВОДКА
local UIStroke = Instance.new("UIStroke")
UIStroke.Thickness = 2
UIStroke.Color = Theme.Stroke
UIStroke.Parent = Main

-- Верхняя панель
local TopBar = Instance.new("Frame")
TopBar.Size = UDim2.new(1, 0, 0, 32)
TopBar.BackgroundColor3 = Color3.fromRGB(25, 25, 35)
TopBar.BorderSizePixel = 0
TopBar.Parent = Main
Instance.new("UICorner", TopBar).CornerRadius = UDim.new(0, 10)

local TopBarCover = Instance.new("Frame")
TopBarCover.Size = UDim2.new(1, 0, 0, 10)
TopBarCover.Position = UDim2.new(0, 0, 1, -10)
TopBarCover.BackgroundColor3 = TopBar.BackgroundColor3
TopBarCover.BorderSizePixel = 0
TopBarCover.Parent = TopBar

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(0, 100, 1, 0)
Title.Position = UDim2.new(0, 12, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "ShadowHub LEAK BY SUNZER"
Title.TextColor3 = Theme.Text
Title.TextSize = 14
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = TopBar

-- Кнопка закрытия
local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 24, 0, 24)
CloseBtn.Position = UDim2.new(1, -28, 0, 4)
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 60, 60)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "×"
CloseBtn.TextColor3 = Theme.Text
CloseBtn.TextSize = 20
CloseBtn.Font = Enum.Font.GothamMedium
CloseBtn.BorderSizePixel = 0
CloseBtn.Parent = TopBar
CloseBtn.MouseEnter:Connect(function() Tween(CloseBtn, {TextColor3 = Color3.new(0.8,0.8,0.8)}) end)
CloseBtn.MouseLeave:Connect(function() Tween(CloseBtn, {TextColor3 = Color3.new(1,1,1)}) end)

-- КНОПКА СВОРАЧИВАНИЯ (MINIMIZE)
local MinBtn = Instance.new("TextButton")
MinBtn.Size = UDim2.new(0, 24, 0, 24)
MinBtn.Position = UDim2.new(1, -56, 0, 4)
MinBtn.BackgroundColor3 = Theme.ItemBg
MinBtn.BackgroundTransparency = 1
MinBtn.Text = "–"
MinBtn.TextColor3 = Theme.Text
MinBtn.TextSize = 20
MinBtn.Font = Enum.Font.GothamMedium
MinBtn.BorderSizePixel = 0
MinBtn.Parent = TopBar
MinBtn.MouseEnter:Connect(function() Tween(MinBtn, {TextColor3 = Color3.new(0.8,0.8,0.8)}) end)
MinBtn.MouseLeave:Connect(function() Tween(MinBtn, {TextColor3 = Color3.new(1,1,1)}) end)

-- КНОПКА ОТКРЫТИЯ (MINIMIZED STATE)
local OpenFrame = Instance.new("Frame")
OpenFrame.Size = UDim2.new(0, 50, 0, 50)
OpenFrame.Position = UDim2.new(0, 20, 0, 20)
OpenFrame.BackgroundColor3 = Theme.Bg
OpenFrame.BorderSizePixel = 0
OpenFrame.Visible = false
OpenFrame.Active = true
OpenFrame.Draggable = true
OpenFrame.Parent = Gui
Instance.new("UICorner", OpenFrame).CornerRadius = UDim.new(0, 10)
local OpenStroke = Instance.new("UIStroke")
OpenStroke.Color = Theme.Stroke
OpenStroke.Thickness = 2
OpenStroke.Parent = OpenFrame

local OpenBtn = Instance.new("TextButton")
OpenBtn.Size = UDim2.new(1, 0, 1, 0)
OpenBtn.BackgroundTransparency = 1
OpenBtn.Text = "S"
OpenBtn.TextColor3 = Theme.Text
OpenBtn.TextSize = 24
OpenBtn.Font = Enum.Font.GothamBold
OpenBtn.Parent = OpenFrame

-- ЛОГИКА СВОРАЧИВАНИЯ
MinBtn.MouseButton1Click:Connect(function()
    Main.Visible = false
    OpenFrame.Visible = true
end)

OpenBtn.MouseButton1Click:Connect(function()
    OpenFrame.Visible = false
    Main.Visible = true
end)

-- ===== ПОЛЕ ДЛЯ ID ИГРОКА =====
local JoinContainer = Instance.new("Frame")
JoinContainer.Size = UDim2.new(1, -20, 0, 30)
JoinContainer.Position = UDim2.new(0, 10, 0, 38)
JoinContainer.BackgroundColor3 = Theme.ItemBg
JoinContainer.Parent = Main
Instance.new("UICorner", JoinContainer).CornerRadius = UDim.new(0, 6)

local JoinInput = Instance.new("TextBox")
JoinInput.Size = UDim2.new(1, -60, 1, 0)
JoinInput.Position = UDim2.new(0, 10, 0, 0)
JoinInput.BackgroundTransparency = 1
JoinInput.Text = ""
JoinInput.PlaceholderText = "https://discord.gg/pXMnnt3bP3 https://discord.gg/pXMnnt3bP3 https://discord.gg/pXMnnt3bP3 https://discord.gg/pXMnnt3bP3"
JoinInput.TextColor3 = Theme.Text
JoinInput.PlaceholderColor3 = Color3.fromRGB(150, 150, 150)
JoinInput.TextSize = 11
JoinInput.Font = Enum.Font.GothamMedium
JoinInput.TextXAlignment = Enum.TextXAlignment.Left
JoinInput.Parent = JoinContainer

local JoinBtn = Instance.new("TextButton")
JoinBtn.Size = UDim2.new(0, 50, 0, 22)
JoinBtn.Position = UDim2.new(1, -55, 0.5, -11)
JoinBtn.BackgroundColor3 = Theme.Accent
JoinBtn.Text = "Join"
JoinBtn.TextColor3 = Color3.new(0,0,0)
JoinBtn.TextSize = 11
JoinBtn.Font = Enum.Font.GothamBold
JoinBtn.Parent = JoinContainer
Instance.new("UICorner", JoinBtn).CornerRadius = UDim.new(0, 4)

JoinBtn.MouseButton1Click:Connect(function()
    local userId = tonumber(JoinInput.Text)
    if not userId then
        JoinBtn.Text = "Bad ID"
        task.wait(1)
        JoinBtn.Text = "Join"
        return
    end
    JoinBtn.Text = "Seeking..."
    local success, err = pcall(function()
        TeleportService:TeleportToPlaceInstance(game.PlaceId, userId, LP)
    end)
    if not success then
        warn("Teleport Error:", err)
        JoinBtn.Text = "Error 771"
        task.wait(1.5)
        JoinBtn.Text = "Join"
    else
        JoinBtn.Text = "Joining..."
    end
end)

-- КНОПКИ ТАБОВ
local TabContainer = Instance.new("Frame")
TabContainer.Size = UDim2.new(1, -20, 0, 25)
TabContainer.Position = UDim2.new(0, 10, 0, 75)
TabContainer.BackgroundTransparency = 1
TabContainer.Parent = Main

local TabHome = Instance.new("TextButton")
TabHome.Size = UDim2.new(0.23, 0, 1, 0) 
TabHome.Position = UDim2.new(0, 0, 0, 0)
TabHome.BackgroundColor3 = Theme.Accent
TabHome.Text = "Home"
TabHome.TextColor3 = Color3.new(0,0,0)
TabHome.Font = Enum.Font.GothamBold
TabHome.TextSize = 10
TabHome.BorderSizePixel = 0
TabHome.Parent = TabContainer
Instance.new("UICorner", TabHome).CornerRadius = UDim.new(0, 6)

local TabPlayers = Instance.new("TextButton")
TabPlayers.Size = UDim2.new(0.23, 0, 1, 0)
TabPlayers.Position = UDim2.new(0.25, 0, 0, 0)
TabPlayers.BackgroundColor3 = Theme.ItemBg
TabPlayers.Text = "Players"
TabPlayers.TextColor3 = Theme.Text
TabPlayers.Font = Enum.Font.GothamBold
TabPlayers.TextSize = 10
TabPlayers.BorderSizePixel = 0
TabPlayers.Parent = TabContainer
Instance.new("UICorner", TabPlayers).CornerRadius = UDim.new(0, 6)

local TabESP = Instance.new("TextButton")
TabESP.Size = UDim2.new(0.23, 0, 1, 0)
TabESP.Position = UDim2.new(0.50, 0, 0, 0)
TabESP.BackgroundColor3 = Theme.ItemBg
TabESP.Text = "Visuals"
TabESP.TextColor3 = Theme.Text
TabESP.Font = Enum.Font.GothamBold
TabESP.TextSize = 10
TabESP.BorderSizePixel = 0
TabESP.Parent = TabContainer
Instance.new("UICorner", TabESP).CornerRadius = UDim.new(0, 6)

local TabLinks = Instance.new("TextButton")
TabLinks.Size = UDim2.new(0.23, 0, 1, 0)
TabLinks.Position = UDim2.new(0.75, 0, 0, 0)
TabLinks.BackgroundColor3 = Theme.ItemBg
TabLinks.Text = "Links"
TabLinks.TextColor3 = Theme.Text
TabLinks.Font = Enum.Font.GothamBold
TabLinks.TextSize = 10
TabLinks.BorderSizePixel = 0
TabLinks.Parent = TabContainer
Instance.new("UICorner", TabLinks).CornerRadius = UDim.new(0, 6)

-- КОНТЕЙНЕРЫ СТРАНИЦ
local ContentFrame = Instance.new("Frame")
ContentFrame.Size = UDim2.new(1, -20, 1, -110)
ContentFrame.Position = UDim2.new(0, 10, 0, 105)
ContentFrame.BackgroundTransparency = 1
ContentFrame.Parent = Main

local PageHome = Instance.new("Frame")
PageHome.Size = UDim2.new(1, 0, 1, 0)
PageHome.BackgroundTransparency = 1
PageHome.Visible = true
PageHome.Parent = ContentFrame
local UIListHome = Instance.new("UIListLayout")
UIListHome.Padding = UDim.new(0, 8)
UIListHome.SortOrder = Enum.SortOrder.LayoutOrder
UIListHome.Parent = PageHome

local PagePlayers = Instance.new("ScrollingFrame")
PagePlayers.Size = UDim2.new(1, 0, 1, 0)
PagePlayers.BackgroundTransparency = 1
PagePlayers.Visible = false
PagePlayers.ScrollBarThickness = 2
PagePlayers.ScrollBarImageColor3 = Theme.Accent
PagePlayers.BorderSizePixel = 0
PagePlayers.AutomaticCanvasSize = Enum.AutomaticSize.Y
PagePlayers.CanvasSize = UDim2.new(0, 0, 0, 0)
PagePlayers.Parent = ContentFrame
local UIListPlayers = Instance.new("UIListLayout")
UIListPlayers.Padding = UDim.new(0, 4)
UIListPlayers.SortOrder = Enum.SortOrder.LayoutOrder
UIListPlayers.Parent = PagePlayers

local PageESP = Instance.new("Frame")
PageESP.Size = UDim2.new(1, 0, 1, 0)
PageESP.BackgroundTransparency = 1
PageESP.Visible = false
PageESP.Parent = ContentFrame
local UIListESP = Instance.new("UIListLayout")
UIListESP.Padding = UDim.new(0, 8)
UIListESP.SortOrder = Enum.SortOrder.LayoutOrder
UIListESP.Parent = PageESP

local PageLinks = Instance.new("Frame")
PageLinks.Size = UDim2.new(1, 0, 1, 0)
PageLinks.BackgroundTransparency = 1
PageLinks.Visible = false
PageLinks.Parent = ContentFrame
local UIListLinks = Instance.new("UIListLayout")
UIListLinks.Padding = UDim.new(0, 8)
UIListLinks.SortOrder = Enum.SortOrder.LayoutOrder
UIListLinks.Parent = PageLinks

-- ===== ЛОГИКА ТАБОВ =====
local function SwitchTab(tab)
    PageHome.Visible = false
    PagePlayers.Visible = false
    PageESP.Visible = false
    PageLinks.Visible = false
    
    Tween(TabHome, {BackgroundColor3 = Theme.ItemBg, TextColor3 = Theme.Text})
    Tween(TabPlayers, {BackgroundColor3 = Theme.ItemBg, TextColor3 = Theme.Text})
    Tween(TabESP, {BackgroundColor3 = Theme.ItemBg, TextColor3 = Theme.Text})
    Tween(TabLinks, {BackgroundColor3 = Theme.ItemBg, TextColor3 = Theme.Text})
    
    if tab == "Home" then
        PageHome.Visible = true
        Tween(TabHome, {BackgroundColor3 = Theme.Accent, TextColor3 = Color3.new(0,0,0)})
    elseif tab == "Players" then
        PagePlayers.Visible = true
        Tween(TabPlayers, {BackgroundColor3 = Theme.Accent, TextColor3 = Color3.new(0,0,0)})
    elseif tab == "ESP" then
        PageESP.Visible = true
        Tween(TabESP, {BackgroundColor3 = Theme.Accent, TextColor3 = Color3.new(0,0,0)})
    elseif tab == "Links" then
        PageLinks.Visible = true
        Tween(TabLinks, {BackgroundColor3 = Theme.Accent, TextColor3 = Color3.new(0,0,0)})
    end
end

TabHome.MouseButton1Click:Connect(function() SwitchTab("Home") end)
TabPlayers.MouseButton1Click:Connect(function() SwitchTab("Players") end)
TabESP.MouseButton1Click:Connect(function() SwitchTab("ESP") end)
TabLinks.MouseButton1Click:Connect(function() SwitchTab("Links") end)

-- ===== UI HELPERS =====

local function CreateToggle(parent, text, default, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 36)
    Frame.BackgroundColor3 = Theme.ItemBg
    Frame.BorderSizePixel = 0
    Frame.Parent = parent
    Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, -60, 1, 0)
    Label.Position = UDim2.new(0, 10, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = text
    Label.TextColor3 = Theme.Text
    Label.TextSize = 12
    Label.Font = Enum.Font.GothamBold
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Frame

    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Size = UDim2.new(0, 42, 0, 22)
    ToggleBtn.Position = UDim2.new(1, -52, 0.5, -11)
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    ToggleBtn.Text = ""
    ToggleBtn.BorderSizePixel = 0
    ToggleBtn.Parent = Frame
    Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0, 11)

    local Circle = Instance.new("Frame")
    Circle.Size = UDim2.new(0, 18, 0, 18)
    Circle.Position = UDim2.new(0, 2, 0.5, -9)
    Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Circle.BorderSizePixel = 0
    Circle.Parent = ToggleBtn
    Instance.new("UICorner", Circle).CornerRadius = UDim.new(1, 0)
    
    local toggled = default
    local function Set(val)
        toggled = val
        if toggled then
            Tween(ToggleBtn, {BackgroundColor3 = Theme.Accent})
            Tween(Circle, {Position = UDim2.new(1, -20, 0.5, -9), BackgroundColor3 = Theme.Bg})
        else
            Tween(ToggleBtn, {BackgroundColor3 = Color3.fromRGB(50, 50, 60)})
            Tween(Circle, {Position = UDim2.new(0, 2, 0.5, -9), BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
        end
        callback(toggled)
    end
    
    ToggleBtn.MouseButton1Click:Connect(function() Set(not toggled) end)
    if default then Set(true) end
end

local function CreateToggleBind(parent, text, default, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 36)
    Frame.BackgroundColor3 = Theme.ItemBg
    Frame.BorderSizePixel = 0
    Frame.Parent = parent
    Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, -110, 1, 0)
    Label.Position = UDim2.new(0, 10, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = text
    Label.TextColor3 = Theme.Text
    Label.TextSize = 12
    Label.Font = Enum.Font.GothamBold
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Frame

    local ToggleBtn = Instance.new("TextButton")
    ToggleBtn.Size = UDim2.new(0, 42, 0, 22)
    ToggleBtn.Position = UDim2.new(1, -52, 0.5, -11)
    ToggleBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    ToggleBtn.Text = ""
    ToggleBtn.BorderSizePixel = 0
    ToggleBtn.Parent = Frame
    Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0, 11)

    local Circle = Instance.new("Frame")
    Circle.Size = UDim2.new(0, 18, 0, 18)
    Circle.Position = UDim2.new(0, 2, 0.5, -9)
    Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Circle.BorderSizePixel = 0
    Circle.Parent = ToggleBtn
    Instance.new("UICorner", Circle).CornerRadius = UDim.new(1, 0)

    local BindBtn = Instance.new("TextButton")
    BindBtn.Size = UDim2.new(0, 45, 0, 22)
    BindBtn.Position = UDim2.new(1, -105, 0.5, -11)
    BindBtn.BackgroundColor3 = Color3.fromRGB(25, 25, 30)
    BindBtn.Text = "LEAK BY SUNZER"
    BindBtn.TextColor3 = Theme.Text
    BindBtn.TextSize = 10
    BindBtn.Font = Enum.Font.GothamBold
    BindBtn.BorderSizePixel = 0
    BindBtn.Parent = Frame
    Instance.new("UICorner", BindBtn).CornerRadius = UDim.new(0, 4)
    
    local BindStroke = Instance.new("UIStroke")
    BindStroke.Color = Color3.fromRGB(60, 60, 70)
    BindStroke.Thickness = 1
    BindStroke.Parent = BindBtn

    local toggled = default
    local boundKey = nil
    local waiting = false

    local function SetState(state)
        toggled = state
        if toggled then
            Tween(ToggleBtn, {BackgroundColor3 = Theme.Accent})
            Tween(Circle, {Position = UDim2.new(1, -20, 0.5, -9), BackgroundColor3 = Theme.Bg})
        else
            Tween(ToggleBtn, {BackgroundColor3 = Color3.fromRGB(50, 50, 60)})
            Tween(Circle, {Position = UDim2.new(0, 2, 0.5, -9), BackgroundColor3 = Color3.fromRGB(255, 255, 255)})
        end
        callback(toggled)
    end

    ToggleBtn.MouseButton1Click:Connect(function() SetState(not toggled) end)

    BindBtn.MouseButton1Click:Connect(function()
        waiting = true
        BindBtn.Text = "..."
        BindBtn.TextColor3 = Theme.Text
        Tween(BindStroke, {Color = Theme.Accent})
    end)

    UIS.InputBegan:Connect(function(input, gp)
        if waiting and input.UserInputType == Enum.UserInputType.Keyboard then
            boundKey = input.KeyCode
            BindBtn.Text = boundKey.Name
            Tween(BindStroke, {Color = Color3.fromRGB(60, 60, 70)})
            waiting = false
        elseif not gp and boundKey and input.KeyCode == boundKey then
            SetState(not toggled)
        end
    end)
    
    if default then SetState(true) end
end

local function CreateSlider(parent, text, min, max, default, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 45)
    Frame.BackgroundColor3 = Theme.ItemBg
    Frame.BorderSizePixel = 0
    Frame.Parent = parent
    Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, 0, 0, 20)
    Label.Position = UDim2.new(0, 10, 0, 2)
    Label.BackgroundTransparency = 1
    Label.Text = text
    Label.TextColor3 = Theme.Text
    Label.TextSize = 12
    Label.Font = Enum.Font.GothamMedium
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Frame

    local ValueLabel = Instance.new("TextLabel")
    ValueLabel.Size = UDim2.new(0, 40, 0, 20)
    ValueLabel.Position = UDim2.new(1, -50, 0, 2)
    ValueLabel.BackgroundTransparency = 1
    ValueLabel.Text = tostring(default) .. "%"
    ValueLabel.TextColor3 = Theme.Text
    ValueLabel.TextSize = 12
    ValueLabel.Font = Enum.Font.GothamBold
    ValueLabel.TextXAlignment = Enum.TextXAlignment.Right
    ValueLabel.Parent = Frame

    local SliderBg = Instance.new("Frame")
    SliderBg.Size = UDim2.new(1, -20, 0, 6)
    SliderBg.Position = UDim2.new(0, 10, 0, 28)
    SliderBg.BackgroundColor3 = Color3.fromRGB(50, 50, 60)
    SliderBg.BorderSizePixel = 0
    SliderBg.Parent = Frame
    Instance.new("UICorner", SliderBg).CornerRadius = UDim.new(1, 0)

    local Fill = Instance.new("Frame")
    Fill.Size = UDim2.new((default - min)/(max - min), 0, 1, 0)
    Fill.BackgroundColor3 = Theme.Accent
    Fill.BorderSizePixel = 0
    Fill.Parent = SliderBg
    Instance.new("UICorner", Fill).CornerRadius = UDim.new(1, 0)

    local Trigger = Instance.new("TextButton")
    Trigger.Size = UDim2.new(1, 0, 1, 0)
    Trigger.BackgroundTransparency = 1
    Trigger.Text = ""
    Trigger.Parent = SliderBg

    local dragging = false
    local function Update(input)
        local pos = math.clamp((input.Position.X - SliderBg.AbsolutePosition.X) / SliderBg.AbsoluteSize.X, 0, 1)
        local val = math.floor(min + (max - min) * pos)
        Tween(Fill, {Size = UDim2.new(pos, 0, 1, 0)}, 0.05)
        ValueLabel.Text = tostring(val) .. "%"
        callback(val)
    end

    Trigger.MouseButton1Down:Connect(function() dragging = true end)
    UIS.InputEnded:Connect(function(input) if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end end)
    UIS.InputChanged:Connect(function(input) if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then Update(input) end end)
end

-- ===== FUNCS: GRAVITY (HOME) =====
local Settings = {Grav = false, GravVal = 60}

-- GRAVITY
local function UpdateGravity(enabled, percent)
    local char = LP.Character
    if not char then return end
    local hrp = char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    local old = hrp:FindFirstChild("ShadowGrav")
    if old then old:Destroy() end
    if enabled then
        local bf = Instance.new("BodyForce")
        bf.Name = "ShadowGrav"
        local mass = 0
        for _, v in pairs(char:GetDescendants()) do if v:IsA("BasePart") then mass = mass + v:GetMass() end end
        bf.Force = Vector3.new(0, mass * workspace.Gravity * (percent / 100), 0)
        bf.Parent = hrp
    end
end

CreateToggleBind(PageHome, "VIBECODED Low Gravity", false, function(val)
    Settings.Grav = val
    UpdateGravity(val, Settings.GravVal)
end)

CreateSlider(PageHome, "VIBECODED Gravity Power", 10, 100, 60, function(val)
    Settings.GravVal = val
    if Settings.Grav then UpdateGravity(true, val) end
end)

-- ===== FUNCS: LINKS PAGE =====

local function CreateLinkButton(parent, name, link)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 36)
    Frame.BackgroundColor3 = Theme.ItemBg
    Frame.BorderSizePixel = 0
    Frame.Parent = parent
    Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, -70, 1, 0)
    Label.Position = UDim2.new(0, 10, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = name .. ": " .. link
    Label.TextColor3 = Theme.Text
    Label.TextSize = 11
    Label.TextTruncate = Enum.TextTruncate.AtEnd
    Label.Font = Enum.Font.GothamMedium
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Frame

    local CopyBtn = Instance.new("TextButton")
    CopyBtn.Size = UDim2.new(0, 60, 0, 22)
    CopyBtn.Position = UDim2.new(1, -70, 0.5, -11)
    CopyBtn.BackgroundColor3 = Theme.Bg
    CopyBtn.Text = "Copy"
    CopyBtn.TextColor3 = Theme.Text
    CopyBtn.TextSize = 10
    CopyBtn.Font = Enum.Font.GothamBold
    CopyBtn.BorderSizePixel = 0
    
    CopyBtn.TextStrokeTransparency = 0 
    CopyBtn.TextStrokeColor3 = Color3.new(0,0,0)
    
    CopyBtn.Parent = Frame
    Instance.new("UICorner", CopyBtn).CornerRadius = UDim.new(0, 4)
    local Stroke = Instance.new("UIStroke")
    Stroke.Color = Theme.Accent
    Stroke.Thickness = 1
    Stroke.Parent = CopyBtn

    CopyBtn.MouseButton1Click:Connect(function()
        if setclipboard then
            setclipboard(link)
            CopyBtn.Text = "Я ДАМ ВАМ ПИЗДЫ ЕСЛИ НЕ ЗАЙДЁТЕ"
            CopyBtn.TextColor3 = Color3.fromRGB(100, 255, 100)
            Stroke.Color = Color3.fromRGB(100, 255, 100)
            task.wait(1.5)
            CopyBtn.Text = "Copy"
            CopyBtn.TextColor3 = Theme.Text
            Stroke.Color = Theme.Accent
        else
            CopyBtn.Text = "Error"
        end
    end)
end

local function CreateInfoLabel(parent, text)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 36)
    Frame.BackgroundColor3 = Theme.ItemBg
    Frame.BorderSizePixel = 0
    Frame.Parent = parent
    Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, -20, 1, 0)
    Label.Position = UDim2.new(0, 10, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = text
    Label.TextColor3 = Theme.Text
    Label.TextSize = 12
    Label.Font = Enum.Font.GothamBold
    Label.TextXAlignment = Enum.TextXAlignment.Center
    Label.Parent = Frame
end

CreateLinkButton(PageLinks, "SUNZWAVE DISCORD SERVER", "https://discord.gg/pXMnnt3bP3")
CreateLinkButton(PageLinks, "SUNZER'S BIO", "https://fakecrime.bio/sunzer")
CreateLinkButton(PageLinks, "BIGHVH DISCORD SERVER", "https://dsc.gg/bighvh")
CreateInfoLabel(PageLinks, "LEAKED BY SUNZER DMYTRIEVSKIY ЖДИТЕ КРЯК НА LOLZTEAM YOUGAME BLASTHACK RSCRIPTS SCRIPTBLOX")
CreateLinkButton(PageLinks, "SUNZWAVE DISCORD SERVER", "https://discord.gg/pXMnnt3bP3")
CreateLinkButton(PageLinks, "SUNZER'S BIO", "https://fakecrime.bio/sunzer")
CreateLinkButton(PageLinks, "BIGHVH DISCORD SERVER", "https://dsc.gg/bighvh")
CreateInfoLabel(PageLinks, "LEAKED BY SUNZER DMYTRIEVSKIY ЖДИТЕ КРЯК НА LOLZTEAM YOUGAME BLASTHACK RSCRIPTS SCRIPTBLOX")
CreateLinkButton(PageLinks, "SUNZWAVE DISCORD SERVER", "https://discord.gg/pXMnnt3bP3")
CreateLinkButton(PageLinks, "SUNZER'S BIO", "https://fakecrime.bio/sunzer")
CreateLinkButton(PageLinks, "BIGHVH DISCORD SERVER", "https://dsc.gg/bighvh")
CreateInfoLabel(PageLinks, "LEAKED BY SUNZER DMYTRIEVSKIY ЖДИТЕ КРЯК НА LOLZTEAM YOUGAME BLASTHACK RSCRIPTS SCRIPTBLOX")
CreateLinkButton(PageLinks, "SUNZWAVE DISCORD SERVER", "https://discord.gg/pXMnnt3bP3")
CreateLinkButton(PageLinks, "SUNZER'S BIO", "https://fakecrime.bio/sunzer")
CreateLinkButton(PageLinks, "BIGHVH DISCORD SERVER", "https://dsc.gg/bighvh")
CreateInfoLabel(PageLinks, "LEAKED BY SUNZER DMYTRIEVSKIY ЖДИТЕ КРЯК НА LOLZTEAM YOUGAME BLASTHACK RSCRIPTS SCRIPTBLOX")

-- ===== FUNCS: PLAYERS LIST =====
local spectating = nil
local function Spectate(plr)
    local char = plr.Character
    if char and char:FindFirstChild("Humanoid") then
        Camera.CameraSubject = char.Humanoid
        spectating = plr
    end
end

local function UnSpectate()
    local char = LP.Character
    if char and char:FindFirstChild("Humanoid") then
        Camera.CameraSubject = char.Humanoid
        spectating = nil
    end
end

local function UpdatePlayerList()
    for _, v in pairs(PagePlayers:GetChildren()) do
        if v:IsA("Frame") then v:Destroy() end
    end
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LP then
            local PFrame = Instance.new("Frame")
            PFrame.Size = UDim2.new(1, -4, 0, 30)
            PFrame.BackgroundColor3 = Theme.ItemBg
            PFrame.BorderSizePixel = 0
            PFrame.Parent = PagePlayers
            Instance.new("UICorner", PFrame).CornerRadius = UDim.new(0, 4)

            local DisplayLbl = Instance.new("TextLabel")
            DisplayLbl.Size = UDim2.new(1, -80, 0, 15) 
            DisplayLbl.Position = UDim2.new(0, 10, 0, 2)
            DisplayLbl.BackgroundTransparency = 1
            DisplayLbl.Text = plr.DisplayName
            DisplayLbl.TextColor3 = Theme.Text
            DisplayLbl.TextSize = 12
            DisplayLbl.Font = Enum.Font.GothamBold
            DisplayLbl.TextXAlignment = Enum.TextXAlignment.Left
            DisplayLbl.Parent = PFrame

            local UserLbl = Instance.new("TextLabel")
            UserLbl.Size = UDim2.new(1, -80, 0, 12) 
            UserLbl.Position = UDim2.new(0, 10, 0, 16)
            UserLbl.BackgroundTransparency = 1
            UserLbl.Text = "fakecrime.bio/sunzer @" .. plr.Name
            UserLbl.TextColor3 = Theme.SubText
            UserLbl.TextSize = 10
            UserLbl.Font = Enum.Font.GothamMedium
            UserLbl.TextXAlignment = Enum.TextXAlignment.Left
            UserLbl.Parent = PFrame

            local SpecBtn = Instance.new("TextButton")
            SpecBtn.Size = UDim2.new(0, 60, 0, 20) 
            SpecBtn.Position = UDim2.new(1, -65, 0.5, -10) 
            SpecBtn.BackgroundColor3 = Theme.Bg
            SpecBtn.Text = "SPEC" 
            SpecBtn.TextColor3 = Theme.Text
            SpecBtn.TextSize = 12 
            SpecBtn.Font = Enum.Font.GothamMedium
            SpecBtn.BorderSizePixel = 0
            SpecBtn.Parent = PFrame
            Instance.new("UICorner", SpecBtn).CornerRadius = UDim.new(0, 4)
            local Stroke = Instance.new("UIStroke")
            Stroke.Color = Theme.Text
            Stroke.Thickness = 1
            Stroke.Parent = SpecBtn

            SpecBtn.MouseButton1Click:Connect(function()
                if spectating == plr then UnSpectate() else Spectate(plr) end
            end)
            
            RunService.RenderStepped:Connect(function()
                if not PFrame.Parent then return end 
                if spectating == plr then
                    SpecBtn.Text = "Unspec"
                    SpecBtn.TextColor3 = Color3.fromRGB(255, 50, 50) 
                    Stroke.Color = Color3.fromRGB(255, 50, 50) 
                else
                    SpecBtn.Text = "Spec"
                    SpecBtn.TextColor3 = Theme.Text 
                    Stroke.Color = Theme.Text 
                end
            end)
        end
    end
end

Players.PlayerAdded:Connect(UpdatePlayerList)
Players.PlayerRemoving:Connect(UpdatePlayerList)
UpdatePlayerList()

-- ===== FUNCS: ESP (XRAY & NAMES) =====
local ESPSettings = {
    Enabled = false,
    Names = false, 
    FillColor = Color3.fromRGB(255, 0, 0),
    OutlineColor = Color3.fromRGB(255, 0, 0)
}

local ESPFolder = Instance.new("Folder")
ESPFolder.Name = "ShadowESP_Storage"
ESPFolder.Parent = CoreGui

local function RemoveESP(plr)
    local hl = ESPFolder:FindFirstChild(plr.Name)
    if hl then hl:Destroy() end
    local bg = ESPFolder:FindFirstChild(plr.Name .. "_Billboard")
    if bg then bg:Destroy() end
end

local function CreateESP(plr)
    if plr == LP then return end
    local char = plr.Character
    if not char then return end
    
    RemoveESP(plr)

    -- Highlight (Xray)
    if ESPSettings.Enabled then
        local hl = Instance.new("Highlight")
        hl.Name = plr.Name
        hl.Adornee = char
        hl.FillColor = ESPSettings.FillColor
        hl.OutlineColor = ESPSettings.OutlineColor
        hl.FillTransparency = 0.5
        hl.OutlineTransparency = 0
        hl.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
        hl.Parent = ESPFolder
    end

    -- Names (BillboardGui)
    if ESPSettings.Names then
        local head = char:FindFirstChild("Head")
        if head then
            local bg = Instance.new("BillboardGui")
            bg.Name = plr.Name .. "_Billboard"
            bg.Adornee = head
            bg.Size = UDim2.new(0, 100, 0, 50)
            bg.StudsOffset = Vector3.new(0, 2, 0)
            bg.AlwaysOnTop = true
            bg.Parent = ESPFolder

            local txt = Instance.new("TextLabel")
            txt.Size = UDim2.new(1, 0, 1, 0)
            txt.BackgroundTransparency = 1
            txt.Text = plr.DisplayName
            txt.TextColor3 = Theme.Text
            txt.TextStrokeTransparency = 0
            txt.TextSize = 14
            txt.Font = Enum.Font.GothamBold
            txt.Parent = bg
        end
    end
end

local function UpdateESP()
    ESPFolder:ClearAllChildren()
    if not ESPSettings.Enabled and not ESPSettings.Names then return end
    
    for _, plr in pairs(Players:GetPlayers()) do
        if plr ~= LP and plr.Character then
            CreateESP(plr)
        end
    end
end

Players.PlayerAdded:Connect(function(plr)
    plr.CharacterAdded:Connect(function()
        task.wait(0.5)
        if ESPSettings.Enabled or ESPSettings.Names then CreateESP(plr) end
    end)
end)

for _, plr in pairs(Players:GetPlayers()) do
    plr.CharacterAdded:Connect(function()
        task.wait(0.5)
        if ESPSettings.Enabled or ESPSettings.Names then CreateESP(plr) end
    end)
end

Players.PlayerRemoving:Connect(RemoveESP)

CreateToggle(PageESP, "Enable VIBECODED DEEPSEEK SYKA BLYAT Xray (ESP)$$$$$$$$$$", false, function(val)
    ESPSettings.Enabled = val
    UpdateESP()
end)

CreateToggle(PageESP, "Enable VIBECODED DEEPSEEK SYKA BLYAT Names (ESP)$$$$$$$$$$", false, function(val)
    ESPSettings.Names = val
    UpdateESP()
end)

local InfoLabel = Instance.new("TextLabel")
InfoLabel.Size = UDim2.new(1, -20, 0, 40)
InfoLabel.Position = UDim2.new(0, 10, 0, 0)
InfoLabel.BackgroundTransparency = 1
InfoLabel.Text = "LEAK BY SUNZER / SUNZWAVE TOP / SHADOWHUB XYETA"
InfoLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
InfoLabel.TextSize = 10
InfoLabel.Font = Enum.Font.GothamMedium
InfoLabel.Parent = PageESP

-- ===== MAIN LOOP & BINDS =====
RunService.RenderStepped:Connect(function()
    -- Spectate Logic
    if spectating then
        if not spectating.Parent or not spectating.Character or not spectating.Character:FindFirstChild("Humanoid") then
            UnSpectate()
        end
    end
end)

LP.CharacterAdded:Connect(function()
    if Settings.Grav then task.wait(0.5) UpdateGravity(true, Settings.GravVal) end
    UnSpectate()
end)

local open = true
CloseBtn.MouseButton1Click:Connect(function() 
    Main.Visible = false 
    OpenFrame.Visible = false 
end)

UIS.InputBegan:Connect(function(i, gp) 
    if not gp and i.KeyCode == Enum.KeyCode.RightShift then 
        open = not open
        Main.Visible = open 
        OpenFrame.Visible = false 
    end 
end)