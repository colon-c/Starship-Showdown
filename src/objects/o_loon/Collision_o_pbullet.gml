/// @description Insert description here
// You can write your code in this editor


if global.shottype == 0{
	instance_destroy(other);
}
instance_destroy();
repeat 10 {
	instance_create_layer(x,y,"Instances",o_loonshard);
}