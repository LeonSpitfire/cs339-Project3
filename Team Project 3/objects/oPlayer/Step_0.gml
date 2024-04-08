//Movement speed
movementSpeed = 5;

//Left and right movement
moveRight = keyboard_check_direct(ord("D"));
moveLeft = keyboard_check_direct(ord("A"));

hspeed = moveRight - moveLeft;

//Up and Down movement
moveUp = keyboard_check_direct(ord("W"));
moveDown = keyboard_check_direct(ord("S"));
vspeed = moveDown - moveUp;

//Actually moving
x += hspeed * movementSpeed;
y += vspeed * movementSpeed;