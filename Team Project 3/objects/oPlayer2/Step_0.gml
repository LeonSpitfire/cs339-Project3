/// @description Insert description here
// You can write your code in this editor
if room == Room1 and  abs(oInputs.xAxis2) > movementThreshold or room == Room1 and abs(oInputs.yAxis2) > movementThreshold{
	direction = oInputs.leftAnalogDirection2
	speed = movementSpeed
}
else{
	// keep me out of things horizontally
if place_meeting(x+hspeed, y, oWall) {
    if hspeed < 0 {  // i'm about to hit on the left
        //move_contact_solid(180, hspeed)
    }
    else { // i'm about to hit on the right
        //move_contact_solid(0, hspeed)
    }
    hspeed = 0
}


// keep me out of things vertically
if place_meeting(x, y+vspeed+gravity, oWall) {
    if vspeed < 0 {  // i'm about to hit on the top
        //move_contact_solid(90, vspeed)
    }
    else {  // i'm about to hit on the bottom
		//show_message("bottom hit eminent")
        //move_contact_solid(270, vspeed)
        gravity = 0
    }
    vspeed = 0
}
// if i'm off the ground, give me gravity
else if !place_meeting(x, y+normalGravity, oWall) {
    gravity = normalGravity
}

// moving right
//if keyboard_check_direct(vk_right) {
if abs(oInputs.xAxis2 > movementThreshold){
    // is there space for me to move right?
    if !place_meeting(x+normalSpeed, y, oWall) {
       hspeed = oInputs.xAxis2*movementSpeed
	   sprite_index = splayer2_walkAnimationR
	  
	   
    }
}
else if abs(oInputs.xAxis2 < -movementThreshold){
    // is there space for me to move right?
    if !place_meeting(x-normalSpeed, y, oWall) {
       hspeed = oInputs.xAxis2*movementSpeed
	  sprite_index = splayer2_walkAnimationL
	   
    }
} 
else 
	sprite_index = splayer_2
//if abs(oInputs.xAxis > movementThreshold){
     //is there space for me to move right?
  //  if !place_meeting(x-normalSpeed, y, oWall) {
    //    hspeed = -oInputs.xAxis*movementSpeed
    //}
//}

// jumping
// am i on the ground, and is there space above my head to jump?
if gamepad_button_check(1,12) and place_meeting(x, y+normalGravity, oWall)
and !place_meeting(x, y-jumpSpeed, oWall) {
    vspeed = -jumpSpeed
}
// Attack animation
    if ((gamepad_button_check(1, gp_shoulderrb))){
        // Play attack animation
        sprite_index = splayer2_AttackAnimationR;
		image_speed = 0.5;
		
		if(direction == 0){
			sprite_index = splayer2_AttackAnimationL;
			image_speed = 0.5;
		}
    } 

// friction to slow me down horizontally
hspeed *= .9
//When the player gets below 0 health, it restarts the game
 if(health2 < 0){
	game_restart();
 }
//if room == rOcean{
//	jumpSpeed = 15
	
//}
}