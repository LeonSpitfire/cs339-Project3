// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculateAxisToAngle(){
	var angleToReturn;

	xDiff = -argument0
	yDiff = argument1
	aTan = arctan( yDiff / xDiff )
	angleToReturn = radtodeg(aTan)

	if xDiff < 0 {
	    if yDiff < 0 {
	        angleToReturn = 360 - angleToReturn
	    }
	    else {
	        angleToReturn *= -1
	    }
	}
	else if xDiff > 0 {
	    angleToReturn = 180 - angleToReturn
	}

	return angleToReturn
}