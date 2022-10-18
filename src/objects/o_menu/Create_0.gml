audio_play_sound(msmenu,1,true);
instance_create_layer(x,y,"Instances",player);
instance_create_layer(540,960,"Instances",o_player);
instance_create_layer(x,y,"Instances",controls);
global.shottype = 0;
global.gumbus = 0;
global.lives = 2;
window_set_fullscreen(true);
visible = true;

instance_create_layer(1080/3,200,"Instances",o_s);
instance_create_layer(1080/3*2,200,"Instances",o_e);
//instance_create_layer(1080/2,200,"Instances",o_i);