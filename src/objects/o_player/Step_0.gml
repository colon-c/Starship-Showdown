if x <= 30 or x >= 1050{
	if x <= 540{
		hspeed = 8;
	}else if x>= 540{
		hspeed = -8;
	}
}

if (keyboard_check(ord("A"))) && x >= 30{
	hspeed=-8+dodgefactor;
}

if (keyboard_check(ord("D"))) && x <= 1050{
	hspeed=8+dodgefactor;
}

if instance_exists(gm){
	if stamina >= 30{
		if keyboard_check(vk_shift) or keyboard_check(ord("P")){
			if (keyboard_check(ord("A"))){
				if candash == true{
					if iframes >= 1{
						invincible = 1;
						if gm.reflectivedash == true{
							invincible = 2;
						}
					}
					if gm.reflectivedash == true{
						alarm[9] = iframes+10;
					}else{
						alarm[9] = iframes;
					}
					iframes -= 2; //Ignore decrease in iframes; old code
					candash = false;
					sprite_index = s_dodgeleft;
					dodgefactor = -14;
					if gm.reflectivedash == true{
						alarm[1] = 24;
						dodgefactor += 4;
					}else{
						alarm[1] = 17;
					}
				}
			}
			if (keyboard_check(ord("D"))){
				if candash == true{
					if iframes >= 1{
						invincible = 1;
						if gm.reflectivedash == true{
							invincible = 2;
						}
					}
					if gm.reflectivedash == true{
						alarm[9] = iframes+10;
					}else{
						alarm[9] = iframes;
					}
					iframes -= 2;
					candash = false;
					sprite_index = s_dodgeright;
					dodgefactor = 14;
					if gm.reflectivedash == true{
						alarm[1] = 24;
					}else{
						alarm[1] = 17;
						dodgefactor -= 4;
					}
				}
			}
		}
	}else{
		stamina += 1;
	}
}

if iframes <= 17{
	iframes += .015;
}

if keyboard_check(vk_shift) == false && keyboard_check(ord("P")) == false{
	dodgefactor = 0;
	sprite_index = s_player;
}

if invincible == 1{
	if iframes >= 1{
		if sprite_index == s_dodgeright{
			sprite_index = i_dodgeright;
		}else if sprite_index == s_dodgeleft{
			sprite_index = i_dodgeleft;
		}
	}
}else if invincible == 2{
	if sprite_index == s_dodgeright{
		sprite_index = r_dodgeright;
	}else if sprite_index == s_dodgeleft{
		sprite_index = r_dodgeleft;
	}
}else if invincible == 0{
	if sprite_index == i_dodgeright{
		sprite_index = s_dodgeright;
	}else if sprite_index == i_dodgeleft{
		sprite_index = s_dodgeleft;
	}
}

if ((keyboard_check(ord("D")) == false) && (keyboard_check(ord("A")) == false)){	
	hspeed = 0;	
	//while hspeed >= 1{
		//hspeed -= 1;
	//}
	//while hspeed <= -1{
		//hspeed += 1;
	//}
}

if keyboard_check(vk_space) or keyboard_check(ord("O")){
	if instance_exists(gm){
		if gm.spreadshot == 1 && not instance_exists(o_wvae){
			SpreadShot(image_angle,20,o_pbullet);
		}else if gm.spreadshot == 2 && not instance_exists(o_wvae){
			ShotgunBlast(image_angle,gm.shotgunfirerate,o_pbullet,gm.spreadangle);
		}
	}
	Shoot(image_angle,15,o_pbullet);
	if global.gumbus == 1{
		AttemptGrenade();
	}
}

if keyboard_check(ord("W")){
	auto_y += .1;
	//60 fps -- intersection shifts by 6 every second
}
if keyboard_check(ord("S")){
	auto_y -= .1;
}