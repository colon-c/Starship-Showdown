if invincible == 0 && other.hostile == 1{
	if global.lives <= 9999{
		instance_destroy();
		audio_play_sound(sndpdeath,2,false);
		repeat 10 {
			instance_create_layer(x,y,"Instances",o_debris);
		}
		global.lives -= 1;
	}else{

	}
	//global.lives -= 1;
}