/// @description Move to next room

with (oPlayer)
{
	//if(hascontrol)
		hascontrol = false;
		//have target set or it will crash
		SlideTransition(TRANS_MODE.GOTO, other.target);
	
}