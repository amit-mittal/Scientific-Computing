function [  ] = a5q2_ab()
syms t y;
f = inline('sin(t)-y');
g = inline('(sin(t) - cos(t) + 3*(exp(-t)))/2');
a = 0;
b = 1;
n = 10^2;
h = (b-a)/n;
t = a:h:b;

x(1) = 1;
for i=1:3
    x(i+1) = x(i) + h*f(t(i), x(i));
    z(i) = g(t(i));
end
for j= 4:n
    x(j+1) = x(j) + (55*f(t(j), x(j)) - 59*f(t(j-1), x(j-1)) + 37*f(t(j-2), x(j-2)) - 9*f(t(j-3), x(j-3)));
    z(j) = g(t(j));
end
z(n+1)=g(t(n+1));

plot(t,x,'b');
hold on;
plot(t,z,'r');
hold off;
%plot(n,err);
end