/*///Desc Checking of both plays are colliding with object
oPlayer_nearby = place_meeting(x,y,oPlayer);
oPlayer2_nearby = place_meeting(x,y,oPlayer2);

//If both players are nearby and have control then transition to next room
if(oPlayer_nearby && oPlayer2_nearby && hascontrol){
	//CHeck if "A" button is pressed
	if (gamepad_button_check_pressed(0, gp_face1)){
		//Confirmation for next level
		SlideTransition(TRANS_MODE.GOTO, other.target);
		hascontrol = false;
	}
}*/
///@desc Checking if crosshairs is colliding with object
oCrossHairs_nearby = place_meeting(x, y, oCrossHairs);

//Check if crosshairs is nearby and "A" button is pressed
if (oCrossHairs_nearby && hascontrol) {
    // Check if the A button is pressed
    if (gamepad_button_check_pressed(0, gp_face1)) {
        // Perform confirmation actions here (e.g., start next level)
        SlideTransition(TRANS_MODE.GOTO, other.target); // Transition to the next room
        hascontrol = false; 
    }
}
<<<<<<< HEAD
oPlayer_nearby = place_meeting(x,y, oPlayer);

if(oPlayer_nearby && hascontrol){
	//check if "A" button pressed
	if(gamepad_button_check_pressed(0, gp_face1)){
		//confirming to teleport to next level
		SlideTransition(TRANS_MODE.GOTO, other.target)
		hascontrol = false;
	}
=======

if(!instance_exists(oBossEnemy))
{
	SlideTransition(TRANS_MODE.GOTO, other.target);
	hascontrol = false;
>>>>>>> 34e8e49df8de640ba9e5fa1c668a6a04063369c6
}
/*
/// Step Event of levelEnd Object
// Desc Checking if both players are colliding with the object
var crosshairs_nearby = place_meeting(x, y, oCrosshairs);

// Check if the crosshairs is nearby and the A button is pressed
if (crosshairs_nearby && hascontrol) {
    // Check if the A button is pressed
    if (gamepad_button_check_pressed(0, gp_face1)) {
        // Perform confirmation actions here (e.g., start next level)
        SlideTransition(TRANS_MODE.GOTO, other.target); // Transition to the next room
        hascontrol = false; // Disable control to prevent multiple transitions
    }
}

*/