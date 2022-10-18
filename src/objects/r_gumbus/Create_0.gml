// Named gumbus because of a mispronunciation we found funny

if speed != 15{
	vspeed = -15;
	
}
if speed == -15{
	alarm[0] = irandom_range(70,100);
}

function Explode(){
	instance_destroy();
	audio_play_sound(sndpdeath,1,false);
	repeat 5{
		instance_create_layer(x,y,"Instances",o_bombshell);
	}
}