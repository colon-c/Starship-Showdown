if move == 1{
	if x>=player.x{
		movement = 2;
	}else{
		movement = 1;
	}
	if movement == 1{
		hspeed = (irandom_range(3,4));
	}else if movement == 2{
		hspeed = (-irandom_range(3,4));
	}
}

alarm[2] = 80;