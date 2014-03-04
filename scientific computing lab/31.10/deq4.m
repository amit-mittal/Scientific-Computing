function[d]=deq4(a)
syms x;
f=x*(1-x)*exp(x);
%d=subs(f,x,a);
d=a*(1-a)*exp(a);