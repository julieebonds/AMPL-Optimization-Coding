param n; #months

param startcash;
param srate;


param rev {i in 1..n};
param exp {i in 1..n};
param r = sum {i in 1..n} rev[i];
param e = sum {i in 1..n} exp[i];
param D = r-e; #leftover revenue


var b {i in 1..n} >=0; #borrowing;
var s {i in 0..n} >=0; #money;
var p {i in 1..n} >=0; #loan payments;


minimize interest: sum {i in 1..n} b[i]*srate;

subject to cons1 {i in 2..n}: p[i] = (1+srate)*b[i-1];
subject to cons4: p[1] = 0; 
subject to cons2: s[0] = startcash;
subject to cons3 {i in 1..n}: s[i] = s[i-1] + b[i] + rev[i] - exp[i] - p[i];
 