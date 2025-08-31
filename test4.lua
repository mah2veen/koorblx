-- LocalScript di dalam CoordGui
local player = game.Players.LocalPlayer
local label = script.Parent:WaitForChild("CoordLabel")

-- Fungsi untuk update posisi
local function updateCoords()
    local character = player.Character or player.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart")

    while true do
        local pos = hrp.Position
        label.Text = string.format("Koordinat: (%.1f, %.1f, %.1f)", pos.X, pos.Y, pos.Z)
        wait(0.2)
    end
end

-- Jalankan saat karakter siap
updateCoords()
