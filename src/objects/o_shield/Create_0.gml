move = 1;
self.shield = 5;
self.hp = 2;
alarm[3] = 20;

self.reflectcheck = 0;

function ReflectedDamage(){
	if self.hp <= 1 && self.shield <= 1{
		instance_destroy();
		audio_play_sound(sndboom,1,false);
		repeat 10 {
			instance_create_layer(x,y,"Instances",o_edebris);
		}
	}else if self.shield <= 1{
		self.hp -= 1;
	}else{
		self.shield -= 1;
	}
	instance_destroy(other);
	self.reflectcheck = 0;
}