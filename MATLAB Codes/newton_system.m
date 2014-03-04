function root=newton_system(init, tol)

syms x y;
f = [4*x^2-y^2;4*x*y^2-x-1];
jac = matlabFunction(jacobian(f));
f = matlabFunction(f);

x1 = init;
x2 = x1 - jac(x1(1),x1(2))\f(x1(1),x1(2));

while norm(x2 - x1) > tol
    x1 = x2;
    x2 = x1 - jac(x1(1),x1(2))\f(x1(1),x1(2));
end

x2

