 gp_num = gamepad_get_device_count();
	if gamepad_is_connected(0){
		//show_message(i)
		xAxis = gamepad_axis_value(0,0)
		yAxis = gamepad_axis_value(0,1)
		rAxis = gamepad_axis_value(0,2)
		uAxis = gamepad_axis_value(0,3)
		
	if gamepad_is_connected(1)	
		xAxis2 = gamepad_axis_value(1,0)
		yAxis2 = gamepad_axis_value(1,1)
		rAxis2 = gamepad_axis_value(1,2)
		uAxis2 = gamepad_axis_value(1,3)

		
		leftAnalogDirection = calculateAxisToAngle(xAxis, yAxis)
		leftAnalogDirection2 = calculateAxisToAngle(xAxis2, yAxis2)
	}
