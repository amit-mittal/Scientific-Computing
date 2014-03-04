function[y]=dif(a);
syms x;
h=diff(func());
y=subs(h,x,a);