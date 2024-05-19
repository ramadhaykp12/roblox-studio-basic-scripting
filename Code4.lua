local trampolines = workspace.Trampolines:GetChildren()

for _, trampoline in ipairs(trampolines) do
	-- apply an upwards force to a player's character
	trampoline.AssemblyLinearVelocity = trampoline.CFrame.UpVector * trampoline:GetAttribute("Power")
end