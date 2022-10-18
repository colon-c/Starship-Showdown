if global.shottype == 0{
	instance_destroy();
	if sprite_index == s_agbullet{
		instance_destroy(other);
	}
}