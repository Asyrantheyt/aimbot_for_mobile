local test = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local ScrollingFrame = Instance.new("ScrollingFrame")
local TextLabel = Instance.new("TextLabel")
local okButton = Instance.new("TextButton")
local okButton2 = Instance.new("TextButton")

test.Name = "test"
test.Parent = game:GetService("CoreGui")
test.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = test
Frame.AnchorPoint = Vector2.new(0.5, 0.5)
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.528843105, 0, 0.499180138, 0)
Frame.Size = UDim2.new(0.343765229, 0, 0.391803265, 0)
Frame.Draggable = true
Frame.Selectable = true
Frame.Active = true

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScrollingFrame.Position = UDim2.new(0.0211922526, 0, 0.0334727764, 0)
ScrollingFrame.Size = UDim2.new(0, 424, 0, 181)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)

TextLabel.Parent = ScrollingFrame
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.483854622, 0, 0.636807799, 0)
TextLabel.Size = UDim2.new(0.910377383, 0, 1.28363037, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Dear, DisplayName this script is not that secure so pls be cool using this script."
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

okButton.Name = "okButton"
okButton.Parent = Frame
okButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
okButton.BorderSizePixel = 0
okButton.Position = UDim2.new(0.0201342404, 0, 0.820083678, 0)
okButton.Size = UDim2.new(0, 199, 0, 43)
okButton.Font = Enum.Font.SourceSans
okButton.Text = "load teammcheck version"
okButton.TextColor3 = Color3.fromRGB(0, 0, 0)
okButton.TextScaled = true
okButton.TextSize = 14.000
okButton.TextWrapped = true

okButton2.Name = "okButton2"
okButton2.Parent = Frame
okButton2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
okButton2.BorderSizePixel = 0
okButton2.Position = UDim2.new(0.523489952, 0, 0.820083678, 0)
okButton2.Size = UDim2.new(0, 199, 0, 43)
okButton2.Font = Enum.Font.SourceSans
okButton2.Text = "load no teammcheck version"
okButton2.TextColor3 = Color3.fromRGB(0, 0, 0)
okButton2.TextScaled = true
okButton2.TextSize = 14.000
okButton2.TextWrapped = true

local function ZILTY_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)
	script.Parent.Text = "Dear, "..tostring(game:GetService("Players").LocalPlayer.DisplayName).." this script is not that secure so pls be cool using this script."
end
coroutine.wrap(ZILTY_fake_script)()
local function FSNE_fake_script() -- nil. 
	local script = Instance.new('LocalScript', okButton)
	script.Parent.MouseButton1Click:Connect(function() script.Parent.Parent.Parent.Enabled = false local ok, sus = pcall(function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/Asyrantheyt/aimbot_for_mobile/main/aimbot"),true))() end) if sus then print("Studio cannot load 'https://raw.githubusercontent.com/Asyrantheyt/aimbot_for_mobile/main/aimbot'") warn(sus) end end)
end
coroutine.wrap(FSNE_fake_script)()
local function GHSA_fake_script()
	local script = Instance.new('LocalScript',okButton2)
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent.Enabled = false
		local ok, sus = pcall(function()
			loadstring(game:HttpGet(("https://raw.githubusercontent.com/Asyrantheyt/aimbot_for_mobile/main/no_teamcheck_aim_bot"),true))()
		end)
		if sus then
			print("Studio cannot load 'https://raw.githubusercontent.com/Asyrantheyt/aimbot_for_mobile/main/no_teamcheck_aim_bot'")
		end
	end)
end
coroutine.wrap(GHSA_fake_script)()
