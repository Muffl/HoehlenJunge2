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
