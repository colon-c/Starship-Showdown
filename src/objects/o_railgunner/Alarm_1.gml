if move == 1{
	if self.x <= player.x{
		hspeed = 6;
	}else{
		hspeed = -6;
	}
	alarm[3] = irandom_range(50,125);
}