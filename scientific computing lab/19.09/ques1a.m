x=[.1 .2 .3 .4];
y=[-.62049958 -.28398668 .00660095 .24842440];
y1=[3.58502082 3.14033271 2.66668043 2.16529366];
syms z;
h1=0;
n=size(x);
for i=1:n(2)
    h1=h1+(y(i)*hfunc(x,i))+(y1(i)*htilda(x,i));
end
h1=expand(h1);
subs(h1,z,.2013)