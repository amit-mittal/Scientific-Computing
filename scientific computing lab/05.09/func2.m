function[y]=func2();
syms x1 x2;
%y=exp(x)-1.5-atan(x);
%y=(7*x^4)+(3*x^2)+pi;
%y(1,1)=(4*x1^2)-x2^2;
%y(2,1)=(4*x1*x2^2)-x1-1;
y(1,1)=(x1*x2^2)+(x1^2*x2)+(x1^4)-3;
y(2,1)=(x1^3*x2^5)-(2*x1^5*x2)-(x1^2)+2;