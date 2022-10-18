if x <= 100{
	hspeed = 4;
}else if x >= 980{
	hspeed = -4;
}
if x <= 100 or x >= 980{
	move = 0;
	alarm[4] = 60;
}

if self.reflectcheck == 1{
	ReflectedDamage()
}