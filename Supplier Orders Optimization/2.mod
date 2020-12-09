param n; #number of suppliers
param m; #of types of valves


param A {i in 1..m, j in 1..n}; # A[i,j] amount of valve i in order from supplier j
param b {i in 1..m}; #required amount of each valve
param c {j in 1..n}; #cost per valve for each supplier

var x {j in 1..n} >= 0, <= 700;

minimize price: sum {j in 1..n} c[j] * x[j];

subject to cons {i in 1..m}: 
  sum {j in 1..n} A[i,j]*x[j] >= b[i];



