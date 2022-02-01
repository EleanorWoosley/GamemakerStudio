// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//trigger temporary invinciblilty and get damaged
function EnemyHurt()
{
	if(!other.isInvinsible)
	{
		isInvinsible = true;
		other.hp --;
		if (other.hp < 1)
			{
				EnemyDeath();
			}
	}
}

//restart lvl for player death
function EnemyDeath()
{
	instance_destroy(other);
	if (random_range(0,10) >4)
		{
			instance_create_layer(other.x, other.y, "Instances", oCoin);
		}
}