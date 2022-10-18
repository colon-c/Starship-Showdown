
if wave >= 4 && instance_exists(o_wvae) == false{
	if irandom_range(1,500) == 2{
		instance_create_layer(choose(1,1079),540,"Instances",o_loon);
	}else if irandom_range(1,500) == 2{
		instance_create_layer(choose(150,930),10,"Instances",o_dart);
	}
}

if keyboard_check_pressed(vk_backspace){
	window_set_fullscreen(false);
}

if lagwave == wave{
	lagwave += 1;
	alarm[4] = 1;
}

if global.nextwave == 1{
	if wave <= 2{
		weight = prevweight + irandom_range(1,2);
		prevweight = weight;
	}else{
		weight = prevweight + irandom_range(2,4);
		prevweight = weight;
	}
	global.nextwave = 0;
}

if not instance_exists(o_player){
	if global.lives < 0{
		audio_stop_all();
		if alarm[7] <= 0{
			alarm[7] = 180;
		}
	}else{
		if alarm[9] <= 0{
			alarm[9] = 90;
		}
	}
}

if increaselife == 1{
	if alarm[6] <= 0{
		alarm[6] = 40;
	}
}

if shredder == 1{
	if keyboard_check(ord("")){
		//shredder = 0;
		//alarm[3] = 3600;
		//shotgunfirerate = 7;
		//spreadangle = 80;
		//alarm[10] = 180;
		
		//Active ability we didn't end up using
	}
}