function y=newton(x0, tol)

syms y;
f = exp(y) - atan(y) - 1.5;
fdiff = diff(f);
fdiff = matlabFunction(fdiff);
f = matlabFunction(f);
i=1;
MAX = 1000;

x(i) = x0;
x(i+1) = x(i) - (f(x(i))/fdiff(x(i)) );
while(abs(x(i+1) - x(i)) > tol) || i < MAX
    i = i+1;
    x(i+1) = x(i) - (f(x(i))/fdiff(x(i)) );
end

fprintf('The root is : %f', x(i+1));