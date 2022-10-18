if global.shottype == 0{
	instance_destroy(other);
}else if global.shottype == 1{
	retainhp = 1;
}

if self.hp <= 0 && hpwas == 0{
	instance_destroy();
	audio_play_sound(sndboom,1,false);
	repeat 10 {
		instance_create_layer(x,y,"Instances",o_edebris);
	}
}else{
	if retainhp == 1{
		hpwas = self.hp - global.bulletdamage;
	}else{
		self.hp -= global.bulletdamage;
	}
}

if retainhp == 1{
	alarm[9] = 5;
}