function y=secant(x0, x1, tol)

%syms y;
%f = exp(y) - atan(y) - 1.5;
%f = matlabFunction(f);
f = @(x) exp(x) - 3*x^2;
i=1;
MAX = 1;

x(i) = x0;
x(i+1) = x1;

while abs(x(i+1)-x(i)) > tol || i < MAX
    i = i+1;
    x(i+1) = x(i) - f(x(i))*((x(i)-x(i-1))/(f(x(i))-f(x(i-1))));
end

fprintf('The root is : %f', x(i+1));