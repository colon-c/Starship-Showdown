instance_destroy();
audio_play_sound(sndboom,1,false);
repeat 10 {
	instance_create_layer(x,y,"Instances",o_edebris);
}