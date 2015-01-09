use <raid3r/raid3r.scad>
m2=1.25;
m3=1.75;
m4=2.25;

module base(){
	difference(){
		cube([80,80,10],center=true);
		translate([0,0,3])cube([40,120,10],center=true);
		translate([0,0,-70])rotate([0,0,0])dynahole(140);
		translate([32,32,0])cylinder(r=m4,h=100,center=true);
		translate([32,-32,0])cylinder(r=m4,h=100,center=true);
		translate([-32,32,0])cylinder(r=m4,h=100,center=true);
		translate([-32,-32,0])cylinder(r=m4,h=100,center=true);
	}
}

module bracket(){
	difference(){
		hull(){
			cube([48,3,28]);
			translate([0,22,14])rotate([0,90,0])cylinder(r=14,h=48,$fn=6);
		}
		translate([-5,23,14])rotate([0,90,0])cruz(60);	
		translate([25,-5,14])rotate([-90,0,0])cruz(60);
		translate([4,4,-15])cube([40,80,44.5]);
	}
}

module armA(){
	difference(){
		cube([30,25,3],center=true);
		translate([12,-8,0])cylinder(r=m2,h=30,$fn=20,center=true);
		translate([12,8,0])cylinder(r=m2,h=30,$fn=20,center=true);
		translate([-12,-8,0])cylinder(r=m2,h=30,$fn=20,center=true);
		translate([-12,8,0])cylinder(r=m2,h=30,$fn=20,center=true);
	}
}

module armB(){
	difference(){
		hull(){
			cylinder(r=14,h=3,$fn=6);
			translate([100,0,0])cylinder(r=14,h=3,$fn=6);
		}
		translate([0,0,-5])cruz(60);	
		translate([100,0,-5])cruz(60);	
		translate([35,0,0])translate([0,0,-5])cylinder(r=m3,h=30,center=true);	
		translate([65,0,0])translate([0,0,-5])cylinder(r=m3,h=30,center=true);	
	}
}

module pinza(){
	difference(){
		union(){
			hull(){
				translate([-2,0,20])rotate([90,0,90])cylinder(r=14,h=48,$fn=6);
				translate([0,11.6,0])rotate([90,0,90])cylinder(r=14,h=44,$fn=6);
			}
			translate([0,10,-12.125])cube([44,46,12.15]);
			hull(){
				translate([0,57,19])cube([44,10,3]);
				translate([0,37,-12.15])cube([44,20,3]);
			}	
		}
		translate([-5,0,20])rotate([0,90,0])cruz(60);	
		translate([2,-24,-9])cube([40,77,45]);
		hull(){
			translate([2,35,-9])cube([40,20,3]);
			translate([2,54,17.15])cube([40,10,3]);
		}	
		//translate([20,50,-20])cube(100);//debug

	}
}

module pinza_baja(){
	difference(){
	union(){
		cube([38,90,9]);
		hull(){
			translate([-3,91,10])cube([44,10,5]);
			translate([-3,80,0])cube([44,10,5]);
		}
	}

	translate([3,-5,3])cube([32,50,60]);

	translate([-20,4,5.6])rotate([0,90,0])agujereado(4,1,100);

	}
}

module junta(){
difference(){
		cube([30-9.75*2,25,3],center=true);
		translate([2.25,-8,0])cylinder(r=m2,h=30,$fn=20,center=true);
		translate([2.25,8,0])cylinder(r=m2,h=30,$fn=20,center=true);
		translate([-2.25,-8,0])cylinder(r=m2,h=30,$fn=20,center=true);
		translate([-2.25,8,0])cylinder(r=m2,h=30,$fn=20,center=true);
	}

}


junta();