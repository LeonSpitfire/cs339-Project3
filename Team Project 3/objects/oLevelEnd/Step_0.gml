///Desc Checking of both plays are colliding with object
oPlayer_nearby = place_meeting(x,y,oPlayer);
oPlayer2_nearby = place_meeting(x,y,oPlayer2);

//If both players are nearby and have control then transition to next room
if(oPlayer_nearby && oPlayer2_nearby && hascontrol){
	hascontrol = false;
	SlideTransition(TRANS_MODE.GOTO, other.target);
}