local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Depth",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Depth-PLAMEN6789-REWORK-/main/DEPTH%20plamen6789%20rework.rbxm",

    Speed = 200,
    DelayTime = 3,
    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,
    BreakLights = true,
    BackwardsMovement = true,

    FlickerLights = {
        true,
        1.5,
    },

    Cycles = {
        Min = 4,
        Max = 8,
        WaitTime = 2,
    },

    CamShake = {
        true,
        {5.5, 50, 0.3, 1.5},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://1158797924",
            Image2 = "rbxassetid://11158797924",

            Shake = true,

            Sound1 = {
                116282238939992,
                { Volume = 0.5 },
            },

            Sound2 = {
                116282238939992,
                { Volume = 0.5 },
            },

            Flashing = {
                true,
                Color3.fromRGB(0, 163, 149),
            },

            Tease = {
                false,
                Min = 4,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to Depth...",
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Entity has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Entity has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Entity has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Entity has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Entity:", entityTable.Model, "has entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player has looked at entity:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died.")
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
