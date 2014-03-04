function[y]=hfunc(x,i)
syms z;
l1=diff(l(x,i));
s=subs(l1,z,x(i));
w=2*s*(z-x(i));
y=(1-w)*l(x,i)*l(x,i);
y=expand(y);