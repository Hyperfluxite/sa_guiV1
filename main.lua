-- Made by 7Hypr for the game "Silent Assassin" (https://www.roblox.com/games/1382113806/Silent-Assassin)
-- very basic for now but have fun

function sandbox(var,func)
	local env = getfenv(func)
	local newenv = setmetatable({},{
		__index = function(self,k)
			if k=="script" then
				return var
			else
				return env[k]
			end
		end,
	})
	setfenv(func,newenv)
	return func
end
cors = {}
mas = Instance.new("Model",game:GetService("Lighting"))
ScreenGui0 = Instance.new("ScreenGui")
Frame1 = Instance.new("Frame")
Frame2 = Instance.new("Frame")
LocalScript3 = Instance.new("LocalScript")
Frame4 = Instance.new("Frame")
TextLabel5 = Instance.new("TextLabel")
LocalScript6 = Instance.new("LocalScript")
TextBox7 = Instance.new("TextBox")
LocalScript8 = Instance.new("LocalScript")
Frame9 = Instance.new("Frame")
TextLabel10 = Instance.new("TextLabel")
LocalScript11 = Instance.new("LocalScript")
TextButton12 = Instance.new("TextButton")
LocalScript13 = Instance.new("LocalScript")
TextButton14 = Instance.new("TextButton")
LocalScript15 = Instance.new("LocalScript")
LocalScript16 = Instance.new("LocalScript")
LocalScript17 = Instance.new("LocalScript")
TextLabel18 = Instance.new("TextLabel")
LocalScript19 = Instance.new("LocalScript")
Frame20 = Instance.new("Frame")
LocalScript21 = Instance.new("LocalScript")
ScreenGui0.Name = "BASIC_GUI"
ScreenGui0.Parent = mas
ScreenGui0.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Frame1.Name = "Drag"
Frame1.Parent = ScreenGui0
Frame1.Position = UDim2.new(0, 5, 0, 5)
Frame1.Size = UDim2.new(0, 175, 0, 25)
Frame1.BackgroundColor = BrickColor.new("Black")
Frame1.BackgroundColor3 = Color3.new(0.156863, 0.156863, 0.156863)
Frame1.BorderSizePixel = 0
Frame2.Name = "Main"
Frame2.Parent = Frame1
Frame2.Position = UDim2.new(0, 0, 1, 0)
Frame2.Size = UDim2.new(1, 0, 0, 300)
Frame2.BackgroundColor = BrickColor.new("Medium brown")
Frame2.BackgroundColor3 = Color3.new(0.243137, 0.243137, 0.243137)
Frame2.BorderColor = BrickColor.new("Institutional white")
Frame2.BorderColor3 = Color3.new(1, 1, 1)
Frame2.BorderSizePixel = 2
Frame2.ClipsDescendants = true
LocalScript3.Name = "Chroma"
LocalScript3.Parent = Frame2
table.insert(cors,sandbox(LocalScript3,function()
local tweenService = game:GetService("TweenService")

local colors = {
	Color3.new(1, 0, 0); --red
	Color3.new(1, 1, 0); --yellow
	Color3.new(0, 1, 0); --green
	Color3.new(0, 1, 1); --cyan
	Color3.new(0, 0, 1); --blue
	Color3.new(1, 0, 1); --magenta
}

local frame = script.Parent

while true do
	for _, color in pairs(colors) do
		local rainbowTween = tweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {BorderColor3 = color})
		rainbowTween:Play()
		rainbowTween.Completed:Wait()
	end
	wait()
end
end))
Frame4.Name = "BG_BH"
Frame4.Parent = Frame2
Frame4.Position = UDim2.new(0, 5, 0, 8)
Frame4.Size = UDim2.new(1, -10, 0, 25)
Frame4.BackgroundColor = BrickColor.new("Black")
Frame4.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame4.BorderColor = BrickColor.new("Institutional white")
Frame4.BorderColor3 = Color3.new(1, 1, 1)
Frame4.BorderSizePixel = 0
TextLabel5.Name = "NameL"
TextLabel5.Parent = Frame4
TextLabel5.Position = UDim2.new(0, 5, 0, 0)
TextLabel5.Size = UDim2.new(0.5, 0, 1, 0)
TextLabel5.BackgroundColor = BrickColor.new("Institutional white")
TextLabel5.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Font = Enum.Font.SciFi
TextLabel5.FontSize = Enum.FontSize.Size14
TextLabel5.Text = "HRP Size"
TextLabel5.TextColor = BrickColor.new("Institutional white")
TextLabel5.TextColor3 = Color3.new(1, 1, 1)
TextLabel5.TextSize = 14
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
LocalScript6.Name = "Chroma"
LocalScript6.Parent = TextLabel5
table.insert(cors,sandbox(LocalScript6,function()
local tweenService = game:GetService("TweenService")

local colors = {
	Color3.new(1, 0, 0); --red
	Color3.new(1, 1, 0); --yellow
	Color3.new(0, 1, 0); --green
	Color3.new(0, 1, 1); --cyan
	Color3.new(0, 0, 1); --blue
	Color3.new(1, 0, 1); --magenta
}

local frame = script.Parent

while true do
	for _, color in pairs(colors) do
		local rainbowTween = tweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {TextColor3 = color})
		rainbowTween:Play()
		rainbowTween.Completed:Wait()
	end
	wait()
end
end))
TextBox7.Name = "Value"
TextBox7.Parent = Frame4
TextBox7.Position = UDim2.new(1, -35, 0, 5)
TextBox7.Size = UDim2.new(0, 30, 0, 15)
TextBox7.BackgroundColor = BrickColor.new("Institutional white")
TextBox7.BackgroundColor3 = Color3.new(1, 1, 1)
TextBox7.Font = Enum.Font.SourceSans
TextBox7.FontSize = Enum.FontSize.Size14
TextBox7.Text = "10"
TextBox7.TextColor = BrickColor.new("Really black")
TextBox7.TextColor3 = Color3.new(0, 0, 0)
TextBox7.TextSize = 14
LocalScript8.Name = "Function"
LocalScript8.Parent = TextBox7
table.insert(cors,sandbox(LocalScript8,function()
game:GetService("RunService").RenderStepped:Connect(function()
	if tonumber(script.Parent.Text) ~= nil then
		local t = script.Parent.Text
		local plrs = game:GetService("Players"):GetPlayers()
		for _, v in pairs(plrs) do
			local char = v.Character
			local hrp = char:FindFirstChild("HumanoidRootPart")
			hrp.Size = Vector3.new(t,t,t)
		end
	end
end)

end))
Frame9.Name = "BG_ESP"
Frame9.Parent = Frame2
Frame9.Position = UDim2.new(0, 5, 0, 38)
Frame9.Size = UDim2.new(1, -10, 0, 25)
Frame9.BackgroundColor = BrickColor.new("Black")
Frame9.BackgroundColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Frame9.BorderColor = BrickColor.new("Institutional white")
Frame9.BorderColor3 = Color3.new(1, 1, 1)
Frame9.BorderSizePixel = 0
TextLabel10.Name = "NameL"
TextLabel10.Parent = Frame9
TextLabel10.Position = UDim2.new(0, 5, 0, 0)
TextLabel10.Size = UDim2.new(0.5, 0, 1, 0)
TextLabel10.BackgroundColor = BrickColor.new("Institutional white")
TextLabel10.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Font = Enum.Font.SciFi
TextLabel10.FontSize = Enum.FontSize.Size14
TextLabel10.Text = "ESP"
TextLabel10.TextColor = BrickColor.new("Institutional white")
TextLabel10.TextColor3 = Color3.new(1, 1, 1)
TextLabel10.TextSize = 14
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
LocalScript11.Name = "Chroma"
LocalScript11.Parent = TextLabel10
table.insert(cors,sandbox(LocalScript11,function()
local tweenService = game:GetService("TweenService")

local colors = {
	Color3.new(1, 0, 0); --red
	Color3.new(1, 1, 0); --yellow
	Color3.new(0, 1, 0); --green
	Color3.new(0, 1, 1); --cyan
	Color3.new(0, 0, 1); --blue
	Color3.new(1, 0, 1); --magenta
}

local frame = script.Parent

while true do
	for _, color in pairs(colors) do
		local rainbowTween = tweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {TextColor3 = color})
		rainbowTween:Play()
		rainbowTween.Completed:Wait()
	end
	wait()
end
end))
TextButton12.Name = "Button"
TextButton12.Parent = Frame9
TextButton12.Position = UDim2.new(1, -35, 0, 5)
TextButton12.Size = UDim2.new(0, 30, 0, 15)
TextButton12.BackgroundColor = BrickColor.new("Institutional white")
TextButton12.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton12.Font = Enum.Font.SourceSans
TextButton12.FontSize = Enum.FontSize.Size12
TextButton12.Text = "Enable"
TextButton12.TextColor = BrickColor.new("Really black")
TextButton12.TextColor3 = Color3.new(0, 0, 0)
TextButton12.TextSize = 12
LocalScript13.Name = "Function"
LocalScript13.Parent = TextButton12
table.insert(cors,sandbox(LocalScript13,function()
local db = false
local ESP = script.Parent
script.Parent.MouseButton1Click:Connect(function()
	db = not db
	if db == true then
		for _, v in pairs(game.Players:GetChildren()) do 
				ESP.Text = "Disable"
			--if v.Name ~= game.Players.LocalPlayer.Name then
				local bgui = Instance.new("BillboardGui",v.Character.Head)
				bgui.Name = ("EGUI")
				bgui.AlwaysOnTop = true
				bgui.ExtentsOffset = Vector3.new(0,3,0)
				bgui.Size = UDim2.new(0,200,0,100)
			
				v.Character.HumanoidRootPart.Transparency = 0.99
			
				local nam = Instance.new("TextLabel",bgui)
				nam.Text = v.Name
				nam.BackgroundTransparency = 1
				nam.TextSize = 30
				nam.Font = Enum.Font.SciFi
				nam.TextColor3 = Color3.new(1,1,1)
				nam.Size = UDim2.new(0,200,0,50)
				nam.TextStrokeTransparency = 0
			
			local hel = Instance.new("TextLabel",bgui)
			spawn(function()
				while true do
					local div = math.floor(v.Character.Humanoid.Health)/v.Character.Humanoid.MaxHealth
					local pc = div*100
					hel.Text = ""..math.floor(v.Character.Humanoid.Health).." ("..math.floor(pc).."%)"
					wait(0.01)
				end
			end)
			
				hel.BackgroundTransparency = 1
				hel.TextSize = 30
				hel.Font = Enum.Font.SciFi
				hel.TextColor3 = Color3.new(1,1,1)
				hel.Size = UDim2.new(0,200,0,50)
				hel.Position = UDim2.new(0,0,0,50)
				hel.TextStrokeTransparency = 0
			
				if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
					for _, p in pairs(v.Character:GetChildren()) do
						if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
						local a = v.Character.HumanoidRootPart:FindFirstChild("gg_xd") or Instance.new("Highlight", v.Character.HumanoidRootPart)
						a.Name = "gg_xd"
							a.FillColor = Color3.new(0, 0, 1)
							a.OutlineColor = Color3.new(1,1,1)
							a.FillTransparency = 0.5
							a.OutlineTransparency = 0
						end
					end
				elseif v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
					for _, p in pairs(v.Character:GetChildren()) do
						if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
						local a = v.Character.HumanoidRootPart:FindFirstChild("gg_xd") or Instance.new("Highlight", v.Character.HumanoidRootPart)
						a.Name = "gg_xd"
							a.FillColor = Color3.new(1, 0, 0)
							a.OutlineColor = Color3.new(1,1,1)
							a.FillTransparency = 0.5
							a.OutlineTransparency = 0
						end
					end
				else
					for _, p in pairs(v.Character:GetChildren()) do
						if p.Name == ("Head") or p.Name == ("Torso") or p.Name == ("Right Arm") or p.Name == ("Right Leg") or p.Name == ("Left Arm") or p.Name == ("Left Leg") then 
						local a = v.Character.HumanoidRootPart:FindFirstChild("gg_xd") or Instance.new("Highlight", v.Character.HumanoidRootPart)
						a.Name = "gg_xd"
							a.FillColor = Color3.new(0, 1, 0)
							a.OutlineColor = Color3.new(1,1,1)
							a.FillTransparency = 0.5
							a.OutlineTransparency = 0
						end
					end
				--end
			end end

	else
		ESP.Text = ("Enable")
		for _, v in pairs(game.Workspace:GetDescendants()) do
			if v.Name == ("gg_xd") then
				v:Remove()
			end
			if v.Name == ("EGUI") then
				v:Remove()
			end
		end
	end
end)

end))
TextButton14.Name = "Expand"
TextButton14.Parent = Frame1
TextButton14.Position = UDim2.new(1, -20, 0, 5)
TextButton14.Size = UDim2.new(0, 15, 0, 15)
TextButton14.BackgroundColor = BrickColor.new("Dark grey metallic")
TextButton14.BackgroundColor3 = Color3.new(0.352941, 0.352941, 0.352941)
TextButton14.BorderColor = BrickColor.new("Institutional white")
TextButton14.BorderColor3 = Color3.new(1, 1, 1)
TextButton14.AutoButtonColor = false
TextButton14.Font = Enum.Font.SourceSansBold
TextButton14.FontSize = Enum.FontSize.Size14
TextButton14.Text = "-"
TextButton14.TextColor = BrickColor.new("Institutional white")
TextButton14.TextColor3 = Color3.new(1, 1, 1)
TextButton14.TextSize = 14
LocalScript15.Parent = TextButton14
table.insert(cors,sandbox(LocalScript15,function()
local b = script.Parent
local db = true
local main = b.Parent.Main
local dfs = main.Size.Y.Offset

b.MouseButton1Click:Connect(function()
	db = not db
	if db == false then
		b.Text = "+"
		main:TweenSize(UDim2.new(1,0,0,0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart,0.4, true)
	elseif db == true then
		b.Text = "-"
		main:TweenSize(UDim2.new(1,0,0,dfs), Enum.EasingDirection.Out, Enum.EasingStyle.Quart,0.4, true)
	end
end)
end))
LocalScript16.Name = "Chroma"
LocalScript16.Parent = TextButton14
table.insert(cors,sandbox(LocalScript16,function()
local tweenService = game:GetService("TweenService")

local colors = {
	Color3.new(1, 0, 0); --red
	Color3.new(1, 1, 0); --yellow
	Color3.new(0, 1, 0); --green
	Color3.new(0, 1, 1); --cyan
	Color3.new(0, 0, 1); --blue
	Color3.new(1, 0, 1); --magenta
}

local frame = script.Parent

while true do
	for _, color in pairs(colors) do
		local rainbowTween = tweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {TextColor3 = color, BorderColor3 = color})
		rainbowTween:Play()
		rainbowTween.Completed:Wait()
	end
	wait()
end
end))
LocalScript17.Name = "Drag"
LocalScript17.Parent = Frame1
table.insert(cors,sandbox(LocalScript17,function()
local UserInputService = game:GetService("UserInputService")
local runService = (game:GetService("RunService"));

local gui = script.Parent

local dragging
local dragInput
local dragStart
local startPos

function Lerp(a, b, m)
	return a + (b - a) * m
end;

local lastMousePos
local lastGoalPos
local DRAG_SPEED = (8); -- // The speed of the UI darg.
function Update(dt)
	if not (startPos) then return end;
	if not (dragging) and (lastGoalPos) then
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
		return 
	end;

	local delta = (lastMousePos - UserInputService:GetMouseLocation())
	local xGoal = (startPos.X.Offset - delta.X);
	local yGoal = (startPos.Y.Offset - delta.Y);
	lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
	gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
end;

gui.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = gui.Position
		lastMousePos = UserInputService:GetMouseLocation()

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
			end
		end)
	end
end)

gui.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

runService.Heartbeat:Connect(Update)
end))
TextLabel18.Name = "NameL"
TextLabel18.Parent = Frame1
TextLabel18.Position = UDim2.new(0, 5, 0, 2)
TextLabel18.Size = UDim2.new(1, -30, 1, -4)
TextLabel18.BackgroundColor = BrickColor.new("Institutional white")
TextLabel18.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel18.BackgroundTransparency = 1
TextLabel18.BorderSizePixel = 0
TextLabel18.Font = Enum.Font.SciFi
TextLabel18.FontSize = Enum.FontSize.Size14
TextLabel18.Text = "HyperHub"
TextLabel18.TextColor = BrickColor.new("Institutional white")
TextLabel18.TextColor3 = Color3.new(1, 1, 1)
TextLabel18.TextScaled = true
TextLabel18.TextSize = 14
TextLabel18.TextWrap = true
TextLabel18.TextWrapped = true
TextLabel18.TextXAlignment = Enum.TextXAlignment.Left
LocalScript19.Name = "Chroma"
LocalScript19.Parent = TextLabel18
table.insert(cors,sandbox(LocalScript19,function()
local tweenService = game:GetService("TweenService")

local colors = {
	Color3.new(1, 0, 0); --red
	Color3.new(1, 1, 0); --yellow
	Color3.new(0, 1, 0); --green
	Color3.new(0, 1, 1); --cyan
	Color3.new(0, 0, 1); --blue
	Color3.new(1, 0, 1); --magenta
}

local frame = script.Parent

while true do
	for _, color in pairs(colors) do
		local rainbowTween = tweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {TextColor3 = color})
		rainbowTween:Play()
		rainbowTween.Completed:Wait()
	end
	wait()
end
end))
Frame20.Name = "BorderGradient"
Frame20.Parent = Frame1
Frame20.Size = UDim2.new(1, 0, 1, 0)
Frame20.BackgroundColor = BrickColor.new("Institutional white")
Frame20.BackgroundColor3 = Color3.new(1, 1, 1)
Frame20.BackgroundTransparency = 1
Frame20.ZIndex = 5
LocalScript21.Name = "Chroma"
LocalScript21.Parent = mas
table.insert(cors,sandbox(LocalScript21,function()
local tweenService = game:GetService("TweenService")

local colors = {
	Color3.new(1, 0, 0); --red
	Color3.new(1, 1, 0); --yellow
	Color3.new(0, 1, 0); --green
	Color3.new(0, 1, 1); --cyan
	Color3.new(0, 0, 1); --blue
	Color3.new(1, 0, 1); --magenta
}

local frame = script.Parent
	
	ScreenGui0.Parent = game.Players.LocalPlayer.PlayerGui
	
while true do
	for _, color in pairs(colors) do
		local rainbowTween = tweenService:Create(frame, TweenInfo.new(1, Enum.EasingStyle.Linear), {Color = color})
		rainbowTween:Play()
		rainbowTween.Completed:Wait()
	end
	wait()
end
end))
for i,v in pairs(mas:GetChildren()) do
	v.Parent = workspace
	pcall(function() v:MakeJoints() end)
end
mas:Destroy()
for i,v in pairs(cors) do
	spawn(function()
		pcall(v)
	end)
end
