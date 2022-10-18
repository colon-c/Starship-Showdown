if instance_exists(gm){
	audio_stop_sound(msmenu);
	instance_destroy();
	instance_destroy(controls);
}