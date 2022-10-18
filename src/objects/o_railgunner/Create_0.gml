move = 1;
self.hp = 8;
retainhp = 0;
hpwas = 0;
alarm[1] = 120;
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