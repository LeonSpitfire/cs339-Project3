/// @description Insert description here
// You can write your code in this editor
if abs(oInputs.xAxis) > movementThreshold or abs(oInputs.yAxis) > movementThreshold{
	direction = oInputs.leftAnalogDirection
	speed = movementSpeed
}
else{
	speed = 0
}