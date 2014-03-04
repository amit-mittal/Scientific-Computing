function y=integral()

a=0.5;
b=1;
n=13;
h=(b-a)/n;

x=a:h:b;
f = @(x) x^4;

int_mp = 0;
for i=1:(length(x)-1)
    int_mp = int_mp + (x(i+1)-x(i))*f((x(i+1)+x(i))/2);
end

int_trap = 0;
for i=1:(length(x)-1)
    int_trap = int_trap + (0.5*(x(i+1)-x(i))*(f(x(i))+f(x(i+1))));
end

int_simp = 0;
for i=1:(length(x)-1)
    int_simp = int_simp + (1/6)*(x(i+1)-x(i))*(f(x(i)) + f(x(i+1)) + 4*f((x(i)+x(i+1))/2));
end

int_simp