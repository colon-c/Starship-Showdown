//health+1=hits to kill

retainhp = 0;
hpwas = 0;
move = 1;
self.hp = 3;
//rep = 10;

alarm[2] = 15;
alarm[0] = 30;

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
	instance_destroy(other); //Useless in all ReflectedDamage() methods
	self.reflectcheck = 0;
}