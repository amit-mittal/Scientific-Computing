function[y]=func3();
syms x1 x2 x3;
%y=exp(x)-1.5-atan(x);
%y=(7*x^4)+(3*x^2)+pi;
%y(1,1)=(4*x1^2)-x2^2;
%y(2,1)=(4*x1*x2^2)-x1-1;
y(1,1)=(x1^3)+(2*x2)-2;
y(2,1)=(x1^3)-(5*x3^2)+7;
y(3,1)=x2*x3^3-1;