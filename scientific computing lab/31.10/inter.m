function[w]=inter(x,y)
syms z;
n1=size(x);
n2=size(y);
n=min(n1(2),n2(2));
w=0;
for i=1:n
   w=w+(y(i)*l(x,i));
end
w=expand(w);