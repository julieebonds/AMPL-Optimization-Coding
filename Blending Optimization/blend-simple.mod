var c1 <= 5000, >=0; # barrels of crude oil 1
var c2 <= 5000 >=0; # barrels of crude oil 2
var c3 <= 5000 >=0; # barrels of crude oil 3
var g1 >= 3000; # barrels of gasoline 1
var g2 >= 4000; # barrels of gasoline 2
var g3 >= 3000; # barrels of gasoline 3
var x11 >=0;
var x12 >=0; # Amount of crude 1 used to make gas 2
var x13 >= 0;
var x21 >= 0;
var x22 >=0;
var x23 >=0;
var x31 >= 0;
var x32 >= 0;
var x33 >=0;

maximize profit: 70*g1 + 60*g2 + 50*g3 - 45*c1 - 35*c2 - 25*c3 - 4*(g1 + g2 + g3);

subject to sulferingas1: 0.005*x11 + 0.02*x21 + 0.03*x31 <= 0.01*g1;
subject to sulferingas2: 0.005*x12 + 0.02*x22 + 0.03*x32 <= 0.02*g2;
subject to sulferingas3: 0.005*x13 + 0.02*x23 + 0.03*x33 <= 0.01*g3;

subject to octaneingas1: 12*x11 + 6*x21 + 8*x31 >= 10*g1;
subject to octaneingas2: 12*x12 + 6*x22 + 8*x32 >= 8*g2;
subject to octaneingas3: 12*x13 + 6*x23 + 8*x33 >= 6*g3;

subject to ccons: c1 = x11 + x12 + x13;
subject to ccons2: c2 = x21 + x22 + x23;
subject to ccons3: c3 = x31 + x32 + x33;

subject to gcons1: g1 = x11 + x21 + x31;
subject to gcons2: g2 = x12 + x22 + x32;
subject to gcons3: g3 = x13 + x23 + x33;