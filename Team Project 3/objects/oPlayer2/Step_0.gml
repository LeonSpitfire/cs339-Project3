/// @description Insert description here
// You can write your code in this editor
if abs(oInputs.xAxis2) > movementThreshold or abs(oInputs.yAxis2) > movementThreshold{
	direction = oInputs.leftAnalogDirection2
	speed = movementSpeed
}
else{
	speed = 0
}