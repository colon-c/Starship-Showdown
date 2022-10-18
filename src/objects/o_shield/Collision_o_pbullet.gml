if other.hostile == false{
	if self.shield <= 0{
		if self.hp <= 0{
			instance_destroy();
			audio_play_sound(sndboom,1,false);
			repeat 10 {
				instance_create_layer(x,y,"Instances",o_edebris);
			}
		}else{
			self.hp -= global.bulletdamage;
			if global.shottype == 1{
				self.hp -= 1;
			}
		}
	}

	if global.shottype != 1{
		self.shield -= global.bulletdamage;
	}else{
		self.shield -= (global.bulletdamage);
		sprite_index = s_antishieldhit;
		alarm[1] = 7;
	}

	if self.shield <= 0{
		sprite_index = s_shieldless;
	}
}