function[output] = q2(a, b, c)

d = [a ; b ; c];
syms x y z;

f = [x^3 - 2*y - 2 ; x^3 - 5*(z^2) + 7 ; (y*(z^2)) - 1];
g = [diff(f, x), diff(f, y), diff(f, z)];

tol = 1.0e-04;
while(true)
    A = subs(g, {x, y, z}, d');
    B = subs(f, {x, y, z}, d');
    
    q = A\B;
    d = d - q;
    if(norm(q)<tol)
        break;
    end
end
output = d;
end