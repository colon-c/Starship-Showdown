audio_stop_sound(msmenu);
audio_play_sound(msgame,1,true);
randomise();
instance_create_layer(x,y,"Instances",player);
instance_create_layer(540,960,"Instances",o_player);
instance_create_layer(540,960,"Instances",o_WV);
wave = 0;
lagwave = 1;
weight = 5;
prevweight = weight;
checkwave = false;
global.nextwave = 0;
alarm[0] = 60;
gumb = true;
one = true;
p = true;
autogun = 0;
homing = false;
reflectdash = true;
reflectivedash = false;
spread = 0;
spreadshot = 0;
increaselife = 0;
shotgunfirerate = 40;
shredder = 0;
spreadangle = 45;
draw_set_font(Font1);
visible = false;
m=0;
n=0;
canspawnbot = true;

function SpawnEnemies(){
if canspawnbot == true{
	rand = choose(1,2,4,3);
}else{
	rand = choose(1,2,4);
}
xpos = choose(-50,1130);
if weight >= 1{
	if rand == 1{
		instance_create_layer(-50,220,"Instances",o_gunner);
		weight -= 1;
	}else if rand == 2 && weight >= 3{
		instance_create_layer(xpos,420,"Instances",o_shield);
		weight -= 2;
	}else if rand == 4 && weight >= 8{
		instance_create_layer(xpos,130,"Instances",o_railgunner);
		weight -= 5;
	}else if rand == 3 && weight >= 12{
		instance_create_layer(xpos,310,"Instances",o_bot);
		weight -= 6;
		canspawnbot = false;
	}
}}

function CheckWave(){
	checkwave = false;
	if not instance_exists(o_bot) && not instance_exists(o_railgunner) && not instance_exists(o_gunner) && not instance_exists(o_shield) && not instance_exists(o_dart){
		wave += 1;
	}
}

function NextWave(){
	instance_create_layer(540,540,"Instances",o_wvae);
	visible = true;
	canspawnbot = true;
	alarm[8] = 90;
}

function RestartGame(){
	room_goto_previous();
	instance_destroy(all);
	instance_create_layer(x,y,"Instances",o_menu);
}

function RespawnPlayer(){
	instance_create_layer(540,960,"Instances",o_player);
}