rangedObject = oWaterball; 
oMaxHealth = 10;
isBoss = true;

idle_sprite = -sPosiedonIdle;
walking_sprite = -1;
hunting_sprite = -1; // Typically the same as the walking sprite but can be changed
attacking_melee_sprite = sPosiedonAttack;
attacking_ranged_sprite = sPosiedonAttack;

// If a sprite is not defined, it will fall back to this one.
// This will typically need to just be the walking sprite
fallback_sprite = sPosiedonIdle;

melee_distance = 32;
damage = 5;

canAttackFromRange = true;