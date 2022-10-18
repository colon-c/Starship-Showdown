if not instance_exists(o_wvae){
	if wave >= 2{
		SpawnEnemies();
	}else if wave == 1 && weight >= 1{
		instance_create_layer(-50,220,"Instances",o_gunner);
		weight -= 1;
		if weight >= 3{
			instance_create_layer(-50,400,"Instances",o_shield);
			weight -= 3;
		}
	}else if wave == 0 && weight >= 1{
		repeat 2{
			instance_create_layer(-50,220,"Instances",o_gunner);
		}
		instance_create_layer(-50,400,"Instances",o_shield);
		weight -= 5;
	}else if wave == 3 && weight >= 1{
		repeat 2{
			instance_create_layer(-50,220,"Instances",o_gunner);
			instance_create_layer(-50,220,"Instances",o_shield);
		}
		instance_create_layer(-50,220,"Instances",o_dart);
		instance_create_layer(-50,220,"Instances",o_railgunner);
		weight = 0;
	}
}//structured waves to gradually introduce enemies

alarm[2] = 10;

if weight == 0 && lagwave != wave{
	CheckWave();
}