/// @description Insert description here
// You can write your code in this editor

if (isInvinsible)
{
	invTimer -= 1/room_speed;
	if (invTimer < 0)
	{
		invTimer = 0.5;
		isInvinsible = false;
	}
}