local textLabel = script.Parent:WaitForChild("TextLabel") -- Pastikan TextLabel ada di GUI

game:GetService("RunService").RenderStepped:Connect(function()
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("HumanoidRootPart") then
        local pos = character.HumanoidRootPart.Position
        textLabel.Text = "X: " .. math.floor(pos.X) .. " Y: " .. math.floor(pos.Y) .. " Z: " .. math.floor(pos.Z)
    end
end)
