x=[0 3 5 8 13];
y=[0 225 383 623 993];
y1=[75 77 80 74 72];
syms z;
h1=0;
n=size(x);
for i=1:n(2)
    h1=h1+(y(i)*hfunc(x,i))+(y1(i)*htilda(x,i));
end
h1=expand(h1);
subs(h1,z,10)
subs(diff(h1),z,10)