function [  ] = a5q2_rungekutta4()
syms t y;
f = inline('sin(t)-y');
g = inline('(sin(t) - cos(t) + 3*(exp(-t)))/2');
h = 0.01;
t0 = 0;
x0 = 1;

t(1)=t0;
x(1)=x0;
for p= 2:2
    n(p)=10^p;
    for j= 1:n(p)
        K1=h*f(t(j),x(j));
        K2=h*f(t(j)+(h/2),x(j)+(K1/2));
        K3=h*f(t(j)+(h/2),x(j)+(K2/2));
        K4=h*f(t(j)+h,x(j)+K3);
        x(j+1)=x(j)+(K1+2*K2+2*K3+K4)/6;
        t(j+1)=t(1)+j*h;
        z(j)=g(t(j));
        e(j)=z(j)-x(j);
    end
    z(n+1)=g(t(n(p)+1));
end
plot(t,x,'b');
hold on;
plot(t,z,'r');
hold off;
%plot(n,err);
end