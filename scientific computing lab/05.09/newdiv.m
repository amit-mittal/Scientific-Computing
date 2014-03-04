x=[1 2 3 4 5 6 7 8 9 10 11];
y=[1 2 3 4 5 6 7 8 9 10 11];
n=size(x);
%xsample=input('Enter sample x\n');
p=0;
%x
%y
syms z;
xi=1;
for i=1:n(2)
    xi=xi*(z-x(i));
end;
for i=1:n(2)
    p=p+(y(i)/(z-x(i))/xid(x,n(2),i));
end;
p=p*xi;
x1=min(x):(max(x)-min(x))/1000:max(x);
w=subs(p,z,x1);
figure(ceil(100000*rand()));
plot(x,y,x1,w);
grid on;