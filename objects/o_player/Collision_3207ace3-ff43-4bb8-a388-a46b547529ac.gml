/// @description Collision with an enemy

//check if we are above them

var above_enemy = y < other.y;

var falling = yspeed > 0;

if(above_enemy and (falling or state == player.ledge_grab))
{
	if (!place_meeting(x, yprevious, o_solid))
	{
		y = yprevious;
	}
	//Get as close to the enemy possible
	while(!place_meeting(x,y + 1, other))
	{
		y++
	}
	
	with(other)
	{
		instance_destroy();
	}
	
	//Bounce off the enemy
	yspeed = -5;
	audio_play_sound(a_step,8,false);
}

else
{
	take_damage()
}

	

