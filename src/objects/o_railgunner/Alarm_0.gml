move = 1;
var inst = instance_create_layer(x,y,"Instances",o_beam);
with inst{
	ownerid = other.id; //links objects
}
alarm[1] = 180;