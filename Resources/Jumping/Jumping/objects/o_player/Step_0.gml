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
	if (xspeed == 0) {
		sprite_index = s_player_idle;
	}
	else {
		sprite_index = s_player_walk;
	}
	//Check if player is on the ground
	if (!place_meeting(x, y + 1, o_solid)) {
		yspeed += gravity_acceleration;
		
		//Player is in the air
		sprite_index = s_player_jump;
		image_index = (yspeed > 0);
		
		//Control the jump height
		if (up_release and yspeed < -6) {
			yspeed = -3;
		}
	}
	else {
		yspeed = 0;
		
		//Jumping code
		if (up) {
			yspeed = jump_height;
		}
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
