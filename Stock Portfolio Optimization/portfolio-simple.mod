param delta = 0;
param p1 = .25;
param p2 = .25;
param p3 = .25;
param p4 = .25;


var x1 >=0;
var x2 >=0;
var x3 >=0;
var r1;
var r2;
var r3;
var r4;
var d1 >=0;
var d2 >=0;
var d3 >=0;
var d4 >=0;

minimize ADR: .25*d1 + .25*d2 + .25*d3 + .25*d4;

subject to cons11: 5.51*x1 + 4.80*x2 + 2.56*x3 = r1;
subject to cons12: -1.24*x1 + 0.61*x2 + 0.16 *x3 = r2;
subject to cons13:  5.46*x1 + 3.60*x2 + -1.64 *x3 = r3;
subject to cons14:  -1.70*x1 + -1.30*x2 + 0.30*x3 = r4; 
subject to cons1: d1 >= -r1;
subject to cons2: d2 >= -r2;
subject to cons3: d3 >= -r3;
subject to cons4: d4 >= -r4;
subject to cons5: r1*p1 + r2*p2 + r3*p3 + r4*p4 >= delta;
subject to cons6: x1 + x2 + x3 = 1;
