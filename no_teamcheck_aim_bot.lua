local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
if game:GetService("CoreGui"):FindFirstChild("Oen Rayfiled") then
 game:GetService("CoreGui")["Oen Rayfiled"].Parent = game
end

local a = Instance.new("ScreenGui")
a.Name = "Oen Rayfiled"
a.Parent = game:GetService("CoreGui")
local b = Instance.new("TextButton")
b.Text = "Open/Close Gui"
b.TextScaled = true
b.TextStrokeColor3 = Color3.fromRGB(255,255,255)
b.TextStrokeTransparency = 0
b.BackgroundTransparency = 1
b.AnchorPoint = Vector2.new(0.5,0.5)
b.Position = UDim2.new(0.074, 0,0.129, 0)
b.Size = UDim2.new(0.132, 0,0.061, 0)
b.Parent = a

b.MouseButton1Click:Connect(function()
    keypress(Enum.KeyCode.RightShift)
    wait()
    keyrelease(Enum.KeyCode.RightShift)
end)
local _G = {}
_G.aim = false
_G.KeyBind = Enum.KeyCode.F

function getclosest()
    local clodis = math.huge
    local cloplr
    for i,v in pairs(game:GetService("Players"):GetChildren()) do
        if v ~= game:GetService("Players").LocalPlayer and v.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude
            if distance < clodis then
                clodis = distance
                cloplr = v
            end
        end
    end
    return cloplr
end


local Window = Rayfield:CreateWindow({
    Name = "AimBot (mobile)",
    LoadingTitle = "loading Up With Rayfield Gui",
    LoadingSubtitle = "by Along",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = "aimbot mobile", -- Create a custom folder for your hub/game
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

local MainTab = Window:CreateTab("MainTab", 4483362458) -- Title, Image


MainTab:CreateToggle({
    Name = "AimLock",
    CurrentValue = false,
    Flag = "aim", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        _G.aim = Value
        while wait() and _G.aim == true do
            _G.aim = Value
            local camera = game:GetService("Workspace").CurrentCamera
            if getclosest().ClassName == "Player" and getclosest().Character:FindFirstChild("Head") then
                camera.CFrame = CFrame.new(camera.CFrame.Position, getclosest().Character.Head.Position)
                if _G.aim == false then break end
            end
        end
    end,
 })
