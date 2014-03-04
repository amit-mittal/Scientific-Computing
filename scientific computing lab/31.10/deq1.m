function[ydiff]=deq1(a,b)
syms x y;
f=sin(x)-y;
ydiff=subs(f,[x,y],[a,b]);