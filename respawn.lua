local Bunny = script.Parent
local spawnPoint = Bunny.PrimaryPart and Bunny.PrimaryPart.Position or Bunny:GetPivot().Position
local Clone = Bunny:Clone()

local function Respawn()
	wait(10) 
	local Vida = Clone:WaitForChild("Humanoid")
	if Vida then
		Vida.Health = Vida.MaxHealth
		
	end
	Clone:PivotTo(CFrame.new(spawnPoint))
	Clone.Parent = Bunny.Parent
	print("?? Bunny renasceu!")

	local newScript = script:Clone()
	newScript.Parent = Clone
	script:Destroy()
end

Bunny:WaitForChild("Humanoid").Died:Connect(Respawn)
