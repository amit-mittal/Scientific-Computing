function[ydiff]=deq2(a)
syms x;
f=x+1;
ydiff=subs(f,x,a);