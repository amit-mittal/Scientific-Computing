function[errormax]=expl(a,b,n,y0)
y(1)=y0;
h=(b-a)/n;
x=a:h:b;
for i=1:n
    y(i+1)=y(i)+(h*deq1(x(i),y(i)));
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
plot(x,er);