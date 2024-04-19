/// @desc Soze vars and MODE Set-up

w = display_get_gui_width();
h = display_get_gui_height();
h_half = h * 0.5;
//Transitions between each rooms and their constants
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
//Transparent is 1, 0 is not
percent = 1;
//Need to know what room your going into and target helps
target = room;