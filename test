local player = game.Players.LocalPlayer

-- Menunggu karakter muncul
player.CharacterAdded:Connect(function(character)
    local primaryPart = character:WaitForChild("HumanoidRootPart")

    while true do
        wait(1) -- Update setiap 1 detik
        local position = primaryPart.Position
        print("Koordinat pemain saat ini: X=" .. position.X .. ", Y=" .. position.Y .. ", Z=" .. position.Z)
    end
end)
