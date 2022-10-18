instance_destroy(other);
if gm.autogun == 0{
	gm.autogun = 1;
	instance_create_layer(1000,1000,"Instances",r_autogunner);
}else if gm.autogun == 1{
	gm.autogun = 2;
	instance_create_layer(80,1000,"Instances",r_autogunner);
}
global.pwrs = true;