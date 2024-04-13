local floor = script.Parent

local function floorColor(otherPart)
	local partParent = otherPart.Parent
	local humanoid = partParent:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		floor.Color = Color3.new(0, 1, 0)
		wait(1)
		floor.Color = Color3.new(1, 1, 1)
	end
end

floor.Touched:Connect(floorColor)
