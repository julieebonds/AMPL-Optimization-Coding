param n := 7;
param m := 7;
param k := 2;






var x {j in 1..n} binary; # j locations one could build a firestation
var c {i in 1..m} binary; # i cities we're looking to cover

maximize cities_covered: sum {i in 1..m} c[i];


subject to cons1: sum {j in 1..n} x[j] <= k; #building at k or less locations
subject to cons2: c[1] <= x[3] + x[7]; #if at least on location covers city 1, c[1] = 1, c[1] = 0 otherwise
subject to cons3: c[2] <= x[2] + x[6]; # ''
subject to cons4: c[3] <= x[1] + x[3] + x[4];
subject to cons5: c[4] <= x[1] + x[4] + x[6] + x[7];
subject to cons6: c[5] <= x[1] + x[3] + x[5] + x[6];
subject to cons7: c[6] <= x[2] + x[4] + x[5];
subject to cons8: c[7] <= x[2] + x[3] + x[4] + x[6];
