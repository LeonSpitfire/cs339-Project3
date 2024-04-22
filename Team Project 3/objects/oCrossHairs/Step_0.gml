/// @description Insert description here
// You can write your code in this editor
if room == Room1 and  abs(oInputs.xAxis) > movementThreshold or room == Room1 and abs(oInputs.yAxis) > movementThreshold{
	direction = oInputs.leftAnalogDirection
	speed = movementSpeed
}