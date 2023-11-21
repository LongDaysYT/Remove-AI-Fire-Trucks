-- This is a basic script to prevent AI fire truck spawns in FiveM

-- Set the density multiplier to a very small positive value
local vehicleDensityMultiplier = 0.001

-- Function to set vehicle density
function SetVehicleDensity()
    SetVehicleDensityMultiplierThisFrame(vehicleDensityMultiplier)
    SetRandomVehicleDensityMultiplierThisFrame(vehicleDensityMultiplier)
    SetParkedVehicleDensityMultiplierThisFrame(vehicleDensityMultiplier)
end

-- Register a loop to continually set the vehicle density
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        SetVehicleDensity()
    end
end)
