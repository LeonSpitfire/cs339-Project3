/// @desc Transition Process
//Not in off, then changing transition

//Checks to see if MODE is on or not
if(mode != TRANS_MODE.OFF){
	//if player has started in next room, start fo fade to 0/1
	if(mode == TRANS_MODE.INTRO){
		//Simple returns buggest number or keeps the smallest(0)
		//Percent = max(0, percent +0.05)
		percent = max(0, percent - max((percent/10), 0.005));
	}
	else
	{
		//Simply opposite of other way
		//percent = min(1, percent+ 0.05);
		//1.1 or 1.2 makes the transition bars overlap
		percent = min(1,percent + max(((1-percent)/10),0.005));
	}
	if (percent == 1) || (percent == 0)
	{
		switch(mode)
		{
			case TRANS_MODE.INTRO:
			{
				mode = TRANS_MODE.OFF;
				break;
			}
			case TRANS_MODE.NEXT:
			{
				mode = TRANS_MODE.INTRO
				room_goto_next();
				break;
			}
			case TRANS_MODE.GOTO:
			{
				mode = TRANS_MODE.INTRO;
				room_goto(target);
				break;
			}
			case TRANS_MODE.RESTART:
			{
				game_restart();
				break;
			}
		}
	}
}