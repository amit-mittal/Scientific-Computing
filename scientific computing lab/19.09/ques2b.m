x=[0 3 5 8 13];
y=[0 225 383 623 993];
y1=[75 77 80 74 72];
syms z;
h1=0;
n=size(x);
for i=1:n(2)
    h1=h1+(y(i)*hfunc(x,i))+(y1(i)*htilda(x,i));
end
h2=expand(diff(h1))-v;
v=55*1760*3/3600;
t=0:.1:13;
for i=1:131
    ft(i)=subs(h2,z,t(i))-v;
    t(i)=i*.1;
end
%plot(t,ft)
bisec(5.6,6,.0001,h2);