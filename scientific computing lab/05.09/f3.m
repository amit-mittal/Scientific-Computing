function[y]=f3(a);
syms x1 x2 x3;
y=subs(func3(),[x1,x2,x3],[a(1),a(2),a(3)]);