if move == 1{
	if self.x <= player.x{
		hspeed = 2;
	}else{
		hspeed = -2;
	}
	alarm[3] = irandom_range(50,120);
}