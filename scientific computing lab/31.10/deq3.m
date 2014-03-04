function[ydiff]=deq3(a)
syms x;
f=cos(x);
ydiff=subs(f,x,a);