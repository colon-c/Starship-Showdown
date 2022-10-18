if self.shield <= 0{
	if self.hp <= 3{
		instance_destroy();
		audio_play_sound(sndboom,1,false);
		repeat 10 {
			instance_create_layer(x,y,"Instances",o_edebris);
		}
	}else{
		self.hp -= 4;
	}
}else{
	self.shield = 0;
	self.hp -= 1;
}

instance_destroy(other);