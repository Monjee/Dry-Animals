/// @description Conejo
if (!global.muerto)
{
	instance_create(0, 310, o_conejo);

	if (alarm[2] == 0)
	{
		alarm[2] = random_range(0.1, 2) * room_speed;
	}
}




















