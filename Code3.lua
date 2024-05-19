local conveyors = workspace.Conveyors:GetChildren()

for _, conveyor in ipairs(conveyors) do
	-- ensures the force applied by our conveyor matches the direction the conveyor is facing
	conveyor.AssemblyLinearVelocity = conveyor.CFrame.LookVector * conveyor:GetAttribute("Speed")
	conveyor:FindFirstChildWhichIsA("Decal"):Destroy() -- deletes the arrow on top of the conveyor
end