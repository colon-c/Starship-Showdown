move = 1;
retainhp = 0;
hpwas = 0;
self.hp = 25;
alarm[2] = 15;
alarm[0] = 60;

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