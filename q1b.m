function[output] = q1b(a, b)

d = [a ; b];
syms x y;

f = [(x*y*y) + (x*x*y) + (x^4) - 3;(x^3*y^5)-2*(x^5*y) - x*x + 2];
g = [diff(f, x), diff(f, y)];

tol = 1.0e-06;
while(true)
    a = subs(g, {x, y}, d');
    b = subs(f, {x, y}, d');
    
    q = a\b;
    d = d - q;
    if(norm(q)<tol)
        break;
    end
    pause;
end
output = d;
end