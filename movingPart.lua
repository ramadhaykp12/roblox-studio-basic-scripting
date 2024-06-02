-- Variabel untuk bagian dan pemain
local part = script.Parent
local players = game:GetService("Players")

-- Kecepatan dan arah gerakan bagian
local speed = 30
local direction = Vector3.new(1, 0, 0) -- Menggerakkan bagian ke arah X
local isMovingForward = true

-- Batas gerakan bagian
local startPos = part.Position
local endPos = startPos + direction * 20 -- Menggerakkan bagian sejauh 20 unit

-- Fungsi untuk menggerakkan bagian
local function movePart()
	while true do
		if isMovingForward then
			part.CFrame = part.CFrame * CFrame.new(direction * speed * wait())
			if (part.Position - startPos).magnitude >= 20 then
				isMovingForward = false
			end
		else
			part.CFrame = part.CFrame * CFrame.new(-direction * speed * wait())
			if (part.Position - endPos).magnitude >= 20 then
				isMovingForward = true
			end
		end
		wait(0.1) -- Menunggu sebentar sebelum mengubah posisi lagi
	end
end

-- Menghubungkan pemain dengan bagian yang bergerak
local function onPlayerTouch(hit)
	local character = hit.Parent
	local player = players:GetPlayerFromCharacter(character)
	if player then
		character.HumanoidRootPart.CFrame = part.CFrame * CFrame.new(0, part.Size.Y / 2 + character.HumanoidRootPart.Size.Y / 2, 0)
	end
end

-- Menghubungkan fungsi onPlayerTouch dengan bagian
part.Touched:Connect(onPlayerTouch)

-- Memulai gerakan bagian
movePart()

