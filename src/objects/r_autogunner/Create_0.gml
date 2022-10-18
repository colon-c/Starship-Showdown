shoot_speed = 20;
canshoot = true;
if not instance_exists(autogunner_target){
	instance_create_layer(540,o_player.auto_y,"Instances",autogunner_target);
}

function AutoAim(){
	if instance_exists(o_player){
			image_angle = point_direction(x, y, autogunner_target.x, autogunner_target.y)-90;
			
			
			//Below is the original code, fft ignore
			
			//image_angle = ((o_player.x)/24)-o_player.auto_y;
			//45 degree range to cover entire x-axis from a corner
			//24 to scale with 1080 screen dimensions
			//auto_y affects intersection point of player and autogunner bullets; set in o_player 'Step' code
			
			//image_angle = ((1080-o_player.x)/24)-o_player.auto_y;
			//1080-o_player.x to effectively flip the angle
	}
}

function Shoot(angle,firerate,shot){
	if canshoot == true{
		var inst;
		inst = instance_create_layer(x,y,"Instances",shot);
		
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
}

function AttemptGrenade(){
	if irandom_range(0,840) == 420{
		var gnst;
		gnst = instance_create_layer(x,y,"Instances",r_gumbus);
			
		with (gnst){
			speed = 15;
			direction = other.image_angle+90;
			image_angle = other.image_angle;
			alarm[0] = irandom_range(50,80);
		}
	}
}