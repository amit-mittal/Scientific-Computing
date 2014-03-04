function[errormax]=trape(a,b,n,y0,tol,itermax,theta)
y(1)=y0;
h=(b-a)/n;
x=a:h:b;
yex(1)=(.5*(sin(x(1))-cos(x(1))))+(1.5*exp(-x(1)));
for i=1:n
    y(i+1)=y(i)+(h*deq1(x(i),y(i)));
    yex(i+1)=(.5*(sin(x(i+1))-cos(x(i+1))))+(1.5*exp(-x(i+1)));
    yold=y(i+1);
    ynew=yold;
    j=1;
    while((abs(ynew-yex(i+1))>tol)&(j<itermax))
        ynew=y(i)+((theta*h*deq1(x(i),y(i)))+((1-theta)*h*deq1(x(i),yold)));
        yold=ynew;
        j=j+1;
    end
    y(i+1)=ynew;
end
figure(ceil(rand(1)*1234567));
plot(x,y,'r');
for i=1:n+1
    er(i)=abs(y(i)-yex(i));
end
hold on;
grid on;
plot(x,yex);
hold off;
errormax=max(er);
figure(ceil(rand(1)*1234567));
plot(x,er);