if global.shottype == 0{
	instance_destroy(other);
}
if self.hp <= 0{
	instance_destroy();
	audio_play_sound(sndboom,1,false);
	repeat 10 {
		instance_create_layer(x,y,"Instances",o_edebris);
	}
}else{
	self.hp -= global.bulletdamage;
}