local platform = script.Parent

local isTouched = false

local function fade()
	if not isTouched then
		isTouched = true
		for count = 1, 10 do
		    platform.Transparency = count / 10
		    task.wait(0.1)
	    end
		platform.CanCollide = false
		task.wait(3)
		platform.CanCollide = true
		platform.Transparency = 0
		isTouched = false
	end
end

platform.Touched:Connect(fade)
