function y=fixed_point(x0,tol)

%g = @(x) (3*x)^(1/3);
g = @(x) sin(x/2)-1;
x(1) = x0;
i=1;
x(i+1) = g(x(i));

while abs(x(i+1)-x(i)) > tol
    i = i+1;
    x(i+1) = g(x(i));
end

fprintf('The root is : %f', x(i+1));