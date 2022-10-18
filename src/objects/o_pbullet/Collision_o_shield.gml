if global.shottype == 0{
	self.sprite_index = s_angrybullet;
	if other.shield >= 1{
		image_angle -= 180;
		vspeed = 15;
		alarm[0] = 1; // 1 frame hostile delay
	}else{
		instance_destroy();
	}
}else{
	instance_destroy();
}
