

	
		
		

leftAnalogDirection = 0

var gp_num = gamepad_get_device_count();
for(var i = 0; i < gp_num; i++;){
	if gamepad_is_connected(i){
		xAxis = gamepad_axis_value(i,0)
		yAxis = gamepad_axis_value(i,1)
		rAxis = gamepad_axis_value(i,2)
		uAxis = gamepad_axis_value(i,3)
		
		leftAnalogDirection = calculateAxisToAngle(xAxis, yAxis)
	}
}
