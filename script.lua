print("script started controlls: c+1=superhuman c+\=admin c+e=poweroff")

local power = ""
local holdingC = false

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessedEvent)
    local character = game.Players.LocalPlayer.Character
    if not character then
        return
    end

    local humanoid = character:FindFirstChild("Humanoid")
    if not humanoid then
        return
    end

    if input.KeyCode == Enum.KeyCode.C then
        holdingC = true
        power = ""
        print("Holding C")
    elseif power == "E" then
        humanoid.WalkSpeed = 16
        humanoid.JumpPower = 10
    elseif holdingC and input.KeyCode ~= Enum.KeyCode.C and power == "" then
        power = input.KeyCode.Name
        print("Power set to:", power)
        
        elseif power == "One" then
            humanoid.WalkSpeed = 100
            humanoid.JumpPower = 100
            print("Player's WalkSpeed and JumpPower set to 100")
        elseif power == "\" then
            loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
        end
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.C then
        holdingC = false
        print("Released C")
    end
end)
