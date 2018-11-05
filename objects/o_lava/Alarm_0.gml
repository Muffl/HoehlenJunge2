/// @description Create little lava particles

with (instance_create_layer(x + random(sprite_width)-50, y - sprite_height/2, "Lava", o_particle))
{
	image_blend = c_yellow;
}

alarm[0] = random_range(10,20);



