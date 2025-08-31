-- LocalScript di dalam ScreenGui (CoordGui)
local player = game.Players.LocalPlayer

-- Tunggu karakter muncul
local function getCharacter()
    return player.Character or player.CharacterAdded:Wait()
end

local function updatePosition()
    local character = getCharacter()
    local hrp = character:WaitForChild("HumanoidRootPart")
    local label = script.Parent:WaitForChild("CoordLabel")

    -- Loop update posisi
    while true do
        local pos = hrp.Position
        label.Text = string.format("Koordinat: (%.1f, %.1f, %.1f)", pos.X, pos.Y, pos.Z)
        wait(0.2)
    end
end

-- Jalankan saat karakter siap
updatePosition()
