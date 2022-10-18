if self.hp <= 5{
	instance_destroy();
	repeat 10 {
		instance_create_layer(x,y,"Instances",o_edebris);
	}
}else{
	self.hp -= 6;
}

instance_destroy(other);