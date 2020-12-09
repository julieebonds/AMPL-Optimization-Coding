param n; #number of stocks
param m; #number of scenarios


param R {i in 1..m, j in 1..n}; # R[i,j] outcome i, stock j
param p {i in 1..m}; # probability of each scenario occuring
param delta;

var x {j in 1..n} >=0;
var r {i in 1..m};
var d {i in 1..m} >=0;

minimize ADR: sum {i in 1..m} p[i]*d[i];

subject to cons1 {i in 1..m}: sum {j in 1..n} R[i,j]*x[j] = r[i];
subject to cons3 {i in 1..m}: d[i] >=-r[i];
subject to cons4: sum {i in 1..m} r[i]*p[i] >= delta;
subject to cons5: sum {j in 1..n} x[j] = 1;
