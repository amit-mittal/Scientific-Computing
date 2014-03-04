function[y]=dif3(a);
syms x1 x2 x3;
h=jacobian(func3());
y=subs(h,{x1,x2,x3},{a(1),a(2),a(3)});