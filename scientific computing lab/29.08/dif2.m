function[y]=dif2(a);
syms x1 x2;
h=jacobian(func2());
y=subs(h,{x1,x2},{a(1),a(2)});