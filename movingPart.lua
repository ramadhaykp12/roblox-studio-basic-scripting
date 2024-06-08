local main = script.Parent
local part1 = game.Workspace.Part1
local part2 = game.Workspace.Part2

local bodyPos = Instance.new("BodyPosition")
bodyPos.Parent = main

while wait() do
   bodyPos.Position = part1.Position
   wait(1)
   bodyPos.Position = part2.Position  
   wait(1)
end
