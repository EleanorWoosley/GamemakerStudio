/// @description Basic enemy collision
// You can write your code in this editor

//check to see if there is a collision between oPlayer and the top of oEnemy
if (y <= other.y - other.sprite_height*0.9)

	{
		//bounce in the air
		EnemyHurt();
		yVector = jumpForce;
	}
//otherwise collide w enemy and take damage
else
	{
		x = x - xVector*10;
		PlayerHurt();
	}