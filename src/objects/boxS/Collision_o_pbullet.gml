if gm.spread == 0{
	gm.spread = 1;
	gm.spreadshot = 1;
	lockspreadshot = 1;
}else if gm.spread == 1{
	if lockspreadshot == 0{
		gm.spread = 2;
		gm.spreadshot = 2;
		gm.shredder = 1;
	}
}