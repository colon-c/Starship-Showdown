global.bulletdamage = 1;
iframes = 17;
dodgefactor = 0;
candash = true;
canshoot = true;
invincible = 1;
stamina = 0;
shoot_speed = 30;
auto_y = -10;

function Shoot(angle,firerate,shot){
	if canshoot == true{
		var inst;
		inst = instance_create_layer(x,y-30,"Instances",shot);
		
		with (inst){
			speed = other.shoot_speed;
			direction = angle+90;
			image_angle = angle;
		}
		if alarm[0] <= 0{
		alarm[0] = firerate;
		}
		canshoot = false;
	}
}//Same as autogunner

function SpreadShot(baseangle,firerate,shot){
	if canshoot == true{
		a = 70;
		repeat 3{
			var inst;
			inst = instance_create_layer(x,y-30,"Instances",shot);
		
			with (inst){
				speed = other.shoot_speed;
				direction = baseangle+o_player.a;
				image_angle = baseangle;
			}
			a+=20;
		}
		if alarm[0] <= 0{
		alarm[0] = firerate;
		}
		canshoot = false;
	}
}

function ShotgunBlast(baseangle,firerate,shot,spreadangle){
	if canshoot == true{
		a = spreadangle;
		repeat 7{
			var inst;
			inst = instance_create_layer(x,y-30,"Instances",shot);
		
			with (inst){
				speed = other.shoot_speed;
				direction = baseangle+o_player.a;
				image_angle = baseangle;
			}
			a+=((90-spreadangle)/3);
		}
		if alarm[0] <= 0{
		alarm[0] = firerate;
		}
		canshoot = false;
	}
}

function AttemptGrenade(){
	if not instance_exists(o_wvae){
		if irandom_range(0,300) == 300{
			var gnst;
			gnst = instance_create_layer(x,y,"Instances",r_gumbus);
			
			with (gnst){
				vspeed = -15;
				alarm[0] = irandom_range(35,50);
			}
		}
	}
}
alarm[7] = 60;