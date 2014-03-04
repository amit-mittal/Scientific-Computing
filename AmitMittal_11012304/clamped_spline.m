function y=clamped_spline()

x = 0.1:0.1:0.4;
h = 0.1;
y = [-0.62049958 -0.28398668 0.00660095 0.24842440];
y0diff = 3.58502082;
yndiff = 2.16529366;

A = zeros(length(x),length(x));

A(1,1) = h/3;
A(1,2) = h/6;
A(length(x),length(x)-1) = h/6;
A(length(x), length(x)) = h/3;
D(1) = (y(2)-y(1))/h - y0diff;
D(length(x)) = yndiff - (y(length(x))-y(length(x)-1))/h;

for i=2:(length(x)-1)
   A(i,i-1) = h/6;
   A(i,i) = 2*h/3;
   A(i,i+1) = h/6;
   D(i) = (y(i+1)-y(i)/h) - (y(i)-y(i-1))/h;
end
M = A\D';

syms X;

for i=1:(length(x)-1)
    S(i) = (((x(i+1)-X)^3)*M(i) + ((X-x(i))^3)*M(i+1))/(6*h) + ((x(i+1)-X)*y(i) + (X-x(i))*y(i+1))/h - ((h/6)*((x(i+1)-X)*M(i) + (X-x(i))*M(i+1)));
end

eval(subs(S(2),0.2013))