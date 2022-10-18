AutoAim();
if not instance_exists(o_wvae){
	Shoot(image_angle,60,o_agbullet);
	if global.gumbus == 1{
		AttemptGrenade();
	}
}