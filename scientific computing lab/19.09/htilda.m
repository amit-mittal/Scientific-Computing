function[y]=htilda(x,i)
syms z;
y=expand((z-x(i))*l(x,i)*l(x,i));