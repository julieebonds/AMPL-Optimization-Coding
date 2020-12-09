param n;
param p {i in 2..n-1};
param f {i in 1..n-1};
param l;
param t;

var g {i in 1..n} >= 0;
var x {i in 2..n-1} >= 0;

minimize cost: sum{i in 2..n-1} x[i]*p[i]; #minimize overall cost of fuel

subject to cons1: g[1] = t;
subject to cons2 {i in 2..n-1}: g[i] = x[i] + g[i-1] - f[i-1];
subject to cons3 {i in 1..n}: g[i] <= t;
subject to cons4 {i in 1..n-1}: g[i] >= f[i] + l;