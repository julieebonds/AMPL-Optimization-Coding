param n;  # types of crude oil i
param m;  # types of gasoline j

param gd {j in 1..m}; #demand for g
param gs {j in 1..m}; #sale price for g
param cavail {i in 1..n}; #barrels of c available
          
param cc {i in 1..n}; #cost of c
param gcost {j in 1..m}; #cost to produce g
          
param Oc {i in 1..n}; #Octane contents for c
param Or {j in 1..m}; #Octane requirements for g

param Sc { i in 1..n}; #Sulfur contents in c
param Sr {j in 1..n}; #Sulfur requirements in g

var c {i in 1..n} >=0;
var g {j in 1..m} >=0;
var x {i in 1..n, j in 1..m} >=0;

maximize profit: (sum {j in 1..m} gs[j] *g[j]) - (sum { i in 1..n} cc[i]*c[i]) - (sum {j in 1..m} g[j]*gcost[j]);

subject to sulferingasj {j in 1..m}: sum {i in 1..m} Sc[i]*x[i,j] <= Sr[j]*g[j];
subject to octaneingasj {j in 1..m}: sum {i in 1..m} Oc[i]*x[i,j] >= Or[j]*g[j];
subject to ccons {i in 1..n}: sum {j in 1..m} x[i,j] = c[i];
subject to gcons {j in 1..m}: sum {i in 1..n} x[i,j] = g[j];
subject to gdemand {j in 1..n}: g[j] >= gd[j];
subject to cavailibility { i in 1..n}: c[i] <= cavail[i];