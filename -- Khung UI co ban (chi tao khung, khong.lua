-- Khung UI co ban (chi tao khung, khong tao cac muc/toggle ben trong)
-- Dat script nay trong StarterGui dang LocalScript

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

-- ScreenGui goc
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "MyHubUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- Khung chinh (Main Frame)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 360, 0, 260)
mainFrame.Position = UDim2.new(0.5, -180, 0.5, -130)
mainFrame.BackgroundColor3 = Color3.fromRGB(21, 23, 28)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 10)
mainCorner.Parent = mainFrame

-- Khung sidebar (danh sach tab, ben trai)
local sidebar = Instance.new("Frame")
sidebar.Name = "Sidebar"
sidebar.Size = UDim2.new(0, 120, 1, 0)
sidebar.Position = UDim2.new(0, 0, 0, 0)
sidebar.BackgroundColor3 = Color3.fromRGB(18, 20, 25)
sidebar.BorderSizePixel = 0
sidebar.Parent = mainFrame

local sidebarCorner = Instance.new("UICorner")
sidebarCorner.CornerRadius = UDim.new(0, 10)
sidebarCorner.Parent = sidebar

-- Khung noi dung (panel ben phai)
local contentPanel = Instance.new("Frame")
contentPanel.Name = "ContentPanel"
contentPanel.Size = UDim2.new(1, -120, 1, 0)
contentPanel.Position = UDim2.new(0, 120, 0, 0)
contentPanel.BackgroundColor3 = Color3.fromRGB(28, 31, 38)
contentPanel.BorderSizePixel = 0
contentPanel.Parent = mainFrame

local contentCorner = Instance.new("UICorner")
contentCorner.CornerRadius = UDim.new(0, 10)
contentCorner.Parent = contentPanel

-- Layout de sau nay tu them cac tab vao sidebar theo chieu doc
local sidebarLayout = Instance.new("UIListLayout")
sidebarLayout.FillDirection = Enum.FillDirection.Vertical
sidebarLayout.Padding = UDim.new(0, 2)
sidebarLayout.Parent = sidebar

-- Layout de sau nay tu them cac muc vao content panel theo chieu doc
local contentLayout = Instance.new("UIListLayout")
contentLayout.FillDirection = Enum.FillDirection.Vertical
contentLayout.Padding = UDim.new(0, 6)
contentLayout.Parent = contentPanel

return screenGui
