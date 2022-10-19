x = 540;
y = 300;
global.pwrs = false;
powers = [0,0,0,0,0,0,0];
ag = false;
spr = false;
if gm.autogun == 1 or gm.autogun == 0{
	ag = true;
}
if gm.spread == 1 or gm.spread == 0{
	spr = true;
	if gm.spread == 1{
		if gm.lagwave >= 10{
			spr = true;
		}else{
			spr = false;
		}
	}
}
powerusedcheck = [gm.p,gm.one,ag,gm.gumb,spr,gm.reflectdash,gm.homing];

total = gm.p+gm.one+ag+gm.gumb+spr+gm.homing+gm.reflectdash;

function PickPowerups(numb,xsval){
	do{
		for (var i = 0; i < 7; i += 1){
			if powerusedcheck[i] == true{
				powers[i] = choose(0,1);
			}
		}
	}until powers[0]+powers[1]+powers[2]+powers[3]+powers[4]+powers[5]+powers[6] == numb;
	xs = xsval;
}

function CreatePowerups(xsvalchk){
	if powers[0] == 1{
		instance_create_layer(xs,y,"Instances",o_pierce);
		xs += xsvalchk;
	}
	if powers[1] == 1{
		instance_create_layer(xs,y,"Instances",o_1up);
		xs += xsvalchk;
	}
	if powers[2] == 1{
		instance_create_layer(xs,y,"Instances",o_autogunner);
		xs += xsvalchk;
	}
	if powers[3] == 1{
		instance_create_layer(xs,y,"Instances",o_gumbus);
		xs += xsvalchk;
	}
	if powers[4] == 1{
		instance_create_layer(xs,y,"Instances",o_spread);
		xs += xsvalchk;
	}
	if powers[5] == 1{
		instance_create_layer(xs,y,"Instances",o_reflective);
		xs += xsvalchk;
	}
	if powers[6] == 1{
		instance_create_layer(xs,y,"Instances",WIP);
		xs += xsvalchk;
	}
}

if total >= 3{
	PickPowerups(3,270);
}else if total >= 2{
	PickPowerups(2,360);
}else if total == 1{
	PickPowerups(1,540);
}else if total <= 0{
	powers[1] = 1;
	xs = 540;
}

CreatePowerups(xs);
	
//o_wvae has ideas ///// set vars to true in gm


depth += 1;
