rangedObject = oWaterball; 
oMaxHealth = 10;
isBoss = true;

idle_sprite = -1;
walking_sprite = -1;
hunting_sprite = -1; // Typically the same as the walking sprite but can be changed
attacking_melee_sprite = -1;
attacking_ranged_sprite = -1;

// If a sprite is not defined, it will fall back to this one.
// This will typically need to just be the walking sprite
fallback_sprite = sBossEnemy;

melee_distance = 32;
damage = 5;

canAttackFromRange = true;