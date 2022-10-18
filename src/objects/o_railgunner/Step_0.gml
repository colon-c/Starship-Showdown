if move == 1{
	if x <= 100{
		hspeed = 2;
	}else if x >= 980{
		hspeed = -2;
	}
}

if self.reflectcheck == 1{
	ReflectedDamage()
}