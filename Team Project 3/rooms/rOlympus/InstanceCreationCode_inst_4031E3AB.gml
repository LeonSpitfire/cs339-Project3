rangedObject = Olightningbolt; 
oMaxHealth = 10;
isBoss = true;

idle_sprite = -sZuesIdle;
walking_sprite = sZuesMovementL;
hunting_sprite = sZuesMovementL; // Typically the same as the walking sprite but can be changed
attacking_melee_sprite = sZuesAttack;
attacking_ranged_sprite = sZuesAttack;

// If a sprite is not defined, it will fall back to this one.
// This will typically need to just be the walking sprite
fallback_sprite = sZuesIdle;

melee_distance = 32;
damage = 5;

canAttackFromRange = true;