function[output] = newton(f, a)
% f = @(x) x^2 -  8;

syms x;
g = diff(f(x));
tol = 1.0e-08;

while(true)
    b = a - (f(a)/subs(g, a));
    if(abs(a-b)<tol)
        break;
    end
    a = b;
end
output = a + (b-a)/2;
end