if x<=540{
	hspeed = 13;
}else{
	hspeed = -13;
}

self.reflectcheck = 0;

function ReflectedDamage(){
	if self.hp <= 1{
		instance_destroy();
		audio_play_sound(sndboom,1,false);
		repeat 10 {
			instance_create_layer(x,y,"Instances",o_edebris);
		}
	}else{
	self.hp -= 1;
	}
	instance_destroy(other);
	self.reflectcheck = 0;
}