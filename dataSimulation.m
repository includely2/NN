clc
clear
%y = 3x1*x2 + 2x3 - 5x4 - 4x5*x6 + 7x7*x8 - 1
x=rand(8,1000);
y=3*x(1,1:end).*x(2,1:end) + 2*x(3,1:end) - 5*x(4,1:end) - 4*x(5,1:end).*x(6,1:end) + 7*x(7,1:end).*x(8,1:end) - 1;
[inputx, PSx] = mapminmax(x);
[outputy, PSy] = mapminmax(y);

