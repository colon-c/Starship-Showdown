if other.health <= 0{
	instance_destroy();
	instance_destroy(other);
	repeat 10 {
		instance_create_layer(x,y,"Instances",o_debris);
	}
}else{
	other.health -= 1;
}