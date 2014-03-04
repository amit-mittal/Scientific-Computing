function[errormax]=Runge2(a,b,n,y0,c2)
y(1)=y0;
h=(b-a)/n;
x=a:h:b;
w2=0.5/c2;
a21=c2;
w1=1-w2;
for i=1:n
    k1=h*deq1(x(i),y(i));
    k2=h*deq1(x(i)+(h*c2),y(i)+(h*a21*k1));
    y(i+1)=y(i)+(w1*k1)+(w2*k2);
end
figure(ceil(rand(1)*1234567));
plot(x,y,'r');
for i=1:n+1
    yex(i)=(.5*(sin(x(i))-cos(x(i))))+(1.5*exp(-x(i)));
    er(i)=abs(y(i)-yex(i));
end
hold on;
grid on;
plot(x,yex);
hold off;
errormax=max(er);
figure(ceil(rand(1)*1234567));
grid on;
plot(x,er);