function[]=AB(a,b,n,y0,c2)
y(1)=y0;
h=(b-a)/n;
x=a:h:b;
w2=0.5/c2;
a21=c2;
w1=1-w2;
for m=1:3
    k1=h*deq1(x(m),y(m));
    k2=h*deq1(x(m)+(h*c2),y(m)+(h*a21*k1));
    y(m+1)=y(m)+(w1*k1)+(w2*k2);
end
for m=4:n
    k(1)=h*deq1(x(m),y(m));
    y(m+1)=y(m)+(h*((55*deq1(x(m),y(m)))-(59*deq1(x(m-1),y(m-1)))+(37*deq1(x(m-2),y(m-2)))-(9*deq1(x(m-3),y(m-3))))/24);
end
figure(ceil(rand(1)*1234567));
plot(x,y,'r');
for it=1:n+1
    yex(it)=(.5*(sin(x(it))-cos(x(it))))+(1.5*exp(-x(it)));
end
hold on;
grid on;
plot(x,yex,'g');
hold off;