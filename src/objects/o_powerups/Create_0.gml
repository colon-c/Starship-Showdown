x = 540;
y = 300;
global.pwrs = false;
a=0;
b=0;
c=0;
d=0;
e=0;
f=0;
g=0;
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
total = gm.p+gm.one+ag+gm.gumb+spr+gm.homing+gm.reflectdash;

function PickPowerups(numb,xsval){
	do{
		if gm.p == true{
			a = choose(0,0,1);
		}if gm.one == true{
			b = irandom_range(0,1);
		}if ag == true{
			c = irandom_range(0,1);
		}if gm.gumb == true{
			d = irandom_range(0,1);
		}if spr == true{
			e = irandom_range(0,1);
		}if gm.reflectdash == true{
			f = choose(0,0,1);
		}if gm.homing == true{
			g = irandom_range(0,1);
		}
	}until a+b+c+d+e+f+g == numb;
	xs = xsval;
}

function CreatePowerups(xsvalchk){
	if a == 1{
		instance_create_layer(xs,y,"Instances",o_pierce);
		xs += xsvalchk;
	}
	if b == 1{
		instance_create_layer(xs,y,"Instances",o_1up);
		xs += xsvalchk;
	}
	if c == 1{
		instance_create_layer(xs,y,"Instances",o_autogunner);
		xs += xsvalchk;
	}
	if d == 1{
		instance_create_layer(xs,y,"Instances",o_gumbus);
		xs += xsvalchk;
	}
	if e == 1{
		instance_create_layer(xs,y,"Instances",o_spread);
		xs += xsvalchk;
	}
	if f == 1{
		instance_create_layer(xs,y,"Instances",o_reflective);
		xs += xsvalchk;
	}
	if g == 1{
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
	b = 1;
	xs = 540;
}

CreatePowerups(xs);
	
//Check o_wvae for the ideas ///// and set vars to true in gm


depth += 1;