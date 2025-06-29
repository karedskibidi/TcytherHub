-- Grow a Garden GUI Script - No Key - Executor Compatible (KRNL / Fluxus / Delta)
if game.CoreGui:FindFirstChild("GrowGardenGUI") then
    game.CoreGui:FindFirstChild("GrowGardenGUI"):Destroy()
end

local player = game.Players.LocalPlayer

-- Tạo GUI
local gui = Instance.new("ScreenGui")
gui.Name = "GrowGardenGUI"
gui.ResetOnSpawn = false
gui.Parent = game.CoreGui

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 300, 0, 200)
frame.Position = UDim2.new(0.5, -150, 0.5, -100)
frame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)

local corner = Instance.new("UICorner", frame)
corner.CornerRadius = UDim.new(0, 12)

local title = Instance.new("TextLabel", frame)
title.Size = UDim2.new(1, 0, 0.2, 0)
title.Text = "SCRIPT GaG by thien"
title.TextColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Font = Enum.Font.GothamBold
title.TextSize = 20

local inputBox = Instance.new("TextBox", frame)
inputBox.Size = UDim2.new(0.8, 0, 0.2, 0)
inputBox.Position = UDim2.new(0.1, 0, 0.35, 0)
inputBox.PlaceholderText = "Raccoon,Dragonfly,..."
inputBox.Font = Enum.Font.Gotham
inputBox.TextSize = 16
inputBox.TextColor3 = Color3.new(1, 1, 1)
inputBox.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
local inputCorner = Instance.new("UICorner", inputBox)
inputCorner.CornerRadius = UDim.new(0, 8)

local spawnBtn = Instance.new("TextButton", frame)
spawnBtn.Size = UDim2.new(0.6, 0, 0.2, 0)
spawnBtn.Position = UDim2.new(0.2, 0, 0.65, 0)
spawnBtn.Text = "Spawn"
spawnBtn.Font = Enum.Font.GothamBold
spawnBtn.TextSize = 16
spawnBtn.TextColor3 = Color3.new(1, 1, 1)
spawnBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
local btnCorner = Instance.new("UICorner", spawnBtn)
btnCorner.CornerRadius = UDim.new(0, 10)

-- Xử lý spawn
spawnBtn.MouseButton1Click:Connect(function()
	local itemName = inputBox.Text
	if itemName and itemName ~= "" then
		local tool = Instance.new("Tool")
		tool.Name = itemName
		tool.RequiresHandle = false
		tool.CanBeDropped = true
		tool.Parent = player.Backpack
	end
end)
