///@description Movement
//code that runs every frame

//keyboard check and imputs
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
jump = keyboard_check_pressed(vk_space);

//horizontal movement
xDirection = right - left;
xVector = xSpeed * xDirection;

//check to see if there is a wall, if there is, stop movement, if there isnt, continue.

if (place_meeting(x + xVector, y, oWall))
	{
		//check one pixle to the left or right of us until we collide with oWall
		// ! means "not"
		while( !place_meeting(x + xVector, y, oWall))
			{
			// only move one pixle aa time while you hit oWall
			x = x + xDirection;
			}
			xVector = 0;
	}
//otherwise move normal
x = x + xVector;

yVector = yVector + grv;

if (place_meeting(x, y + yVector, oWall))
	{
		//check one pixle to the left or right of us until we collide with oWall
		// ! means "not"
		//"sign is going to return the positive or negative sign for a value (-1, +1)
		//sign(yVector) f yVector is positive it will return a positive 1, and if its nevative it will return a negative 1
		while(!place_meeting(x, y + sign(yVector), oWall))
			{
			// only move one pixle aa time while you hit oWall
			y = y + sign(yVector);
			}
			yVector = 0;
	}
//otherwise move normal
y = y + yVector;

//if we are touching oWall and we press the jump key, jump!
if (place_meeting(x, y + 1, oWall) and (jump))
{
		yVector = jumpForce;
}

//die in a pit and restart lvl
if (y >= room_height)

	{
		PlayerDeath();
	}