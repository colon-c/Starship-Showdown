if self.x >= player.x && abs(player.x - self.x) <= 200{
	hspeed = ((player.x-self.x)/20);
	vspeed = 20;
}else if self.x <= player.x && abs(player.x - self.x) <= 200{
	hspeed = ((player.x-self.x)/20);
	vspeed = 20;
}

if self.reflectcheck == 1{
	ReflectedDamage()
}