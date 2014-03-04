clc;
p=[0,1]
syms x y
f=[4*x^2-y^2;4*x*y^2-x]
g=[8*x,-2*y;4*y^2-1,8*x*y]
A=subs(g,{x,y},p)
b=subs(f,{x,y},p)