/// @description Controlling the players state

#region Set up controls for the player
right = keyboard_check(vk_right);
left = keyboard_check(vk_left);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
up_release = keyboard_check_released(vk_up);
#endregion

#region State Machine
switch (state) {
#region Move State
	case player.moving:
	//Check if player is on the ground
	if (!place_meeting(x, y + 1, o_solid)) {
		yspeed += gravity_acceleration;
		
		//More code soon
	}
	else {
		yspeed = 0;
	}
	//Change direction of sprite
	if (xspeed != 0) {
		image_xscale = sign(xspeed);
	}
	//Check for moving left or right
	if (right or left) {
		xspeed += (right - left) * acceleration;
		xspeed = clamp(xspeed, -max_speed, max_speed);
	}
	else {
		apply_friction(acceleration);
	}
	
	move(o_solid);
	
	break;
#endregion
#region Ledge Grab state
	case player.ledge_grab:
	
	break;
#endregion
#region Door state
	case player.door:
	
	break;
#endregion
#region Hurt state
	case player.hurt:
	
	break;
#endregion
#region Death state
	case player.death:
	
	break;
#endregion
}
#endregion
