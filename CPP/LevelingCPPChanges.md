# How to Extend Level Cap from 80 to 255 in TrinityCore

This guide will help you increase the level cap for characters from 80 to 255 in World of Warcraft TrinityCore. We'll make the necessary code changes in the `player.cpp` file located at `src\server\game\Entities\player\player.cpp`.

## Steps to Modify TrinityCore

1. Open your code editor and find the `player.cpp` file at `src\server\game\Entities\player\player.cpp`.

2. Locate the following code block in `player.cpp`:

```cpp
uint8 exp_max_lvl = GetMaxLevelForExpansion(GetSession()->Expansion());
uint8 conf_max_lvl = sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL);
if (exp_max_lvl == DEFAULT_MAX_LEVEL || exp_max_lvl >= conf_max_lvl)
SetUInt32Value(PLAYER_FIELD_MAX_LEVEL, conf_max_lvl);
else
SetUInt32Value(PLAYER_FIELD_MAX_LEVEL, exp_max_lvl);
SetUInt32Value(PLAYER_NEXT_LEVEL_XP, sObjectMgr->GetXPForLevel(GetLevel()));
```

3. Comment out the entire code block by adding `//` at the start of each line:

```cpp
//uint8 exp_max_lvl = GetMaxLevelForExpansion(GetSession()->Expansion());
//uint8 conf_max_lvl = sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL);
//if (exp_max_lvl == DEFAULT_MAX_LEVEL || exp_max_lvl >= conf_max_lvl)
// SetUInt32Value(PLAYER_FIELD_MAX_LEVEL, conf_max_lvl);
//else
// SetUInt32Value(PLAYER_FIELD_MAX_LEVEL, exp_max_lvl);
//SetUInt32Value(PLAYER_NEXT_LEVEL_XP, sObjectMgr->GetXPForLevel(GetLevel()));
```

4. Add the following code block right after the commented-out section:

```cpp
uint8 conf_max_lvl = sWorld->getIntConfig(CONFIG_MAX_PLAYER_LEVEL);
SetUInt32Value(PLAYER_FIELD_MAX_LEVEL, conf_max_lvl);
SetUInt32Value(PLAYER_NEXT_LEVEL_XP, sObjectMgr->GetXPForLevel(GetLevel()));
``` 

This code sets the maximum player level based on your server configuration and updates the experience required for the next level.

5. Save the `player.cpp` file.

6. Open the `DBCenums.h` file located at `src\server\shared\DataStores\DBCenums.h`.

7. Find this section in `DBCenums.h`:

```cpp
#pragma pack(pop)
enum LevelLimit : uint8
{
// Client expected level limitation, like as used in DBC item max levels for "until max player level"
// use as default max player level, must be fit max level for used client
// also see MAX_LEVEL and STRONG_MAX_LEVEL define
DEFAULT_MAX_LEVEL = 255,

// client supported max level for player/pets/etc. Avoid overflow or client stability affected.
// also see GT_MAX_LEVEL define
MAX_LEVEL = 255,

// Server side limitation. Base at used code requirements.
// also see MAX_LEVEL and GT_MAX_LEVEL define
STRONG_MAX_LEVEL = 255,
};
```

8. Ensure that the values for `DEFAULT_MAX_LEVEL`, `MAX_LEVEL`, and `STRONG_MAX_LEVEL` are all set to `255`, as shown above.

9. Save the `DBCenums.h` file.

10. Recompile TrinityCore to apply the changes.

With these changes, characters on your modified TrinityCore server will be able to level up from 80 to 255, based on your server configuration.
