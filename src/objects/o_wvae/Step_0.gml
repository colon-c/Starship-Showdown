if pwrcheck == true{
	if (not instance_exists(o_powerups)){
		if alarm[0] <= 0{
			alarm[0] = 60;
		}
	}
}