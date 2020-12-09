var x1 >= 0;  # Bonds
var x2 >= 0;  # Home Loans
var x3 >= 0;  # Auto Loans
var x4 >= 0;  # Personal Loans 

maximize returns: 0.10*x1 + 0.16*x2 + 0.13*x3 + 0.20*x4;

subject to investmenttotal: x1 + x2 + x3 + x4 <= 500000;
subject to x4cons: x4 <= x1;
subject to x2cons: x2 <= x3;
subject to x4cons2: x4 <= 0.25*(x1 + x2 + x3 + x4);




