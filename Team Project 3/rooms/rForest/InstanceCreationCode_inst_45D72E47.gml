rangedObject = -1; 
oMaxHealth = 10;
isBoss = true;

idle_sprite = sArtemisIdle;
walking_sprite = sArtemisIdle;
hunting_sprite = -1; // Typically the same as the walking sprite but can be changed
attacking_melee_sprite = sArtemisAttack;
attacking_ranged_sprite = -1;

// If a sprite is not defined, it will fall back to this one.
// This will typically need to just be the walking sprite
fallback_sprite = sArtemisIdle;

melee_distance = 30;
damage = 5;

canAttackFromRange = false;