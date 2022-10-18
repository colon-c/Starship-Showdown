vspeed = 2;
self.hp = 0;
if irandom_range(1,2)==1{
	x = -10;
	hspeed = 7;
}else{
	x = 1090;
	hspeed = -7;
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