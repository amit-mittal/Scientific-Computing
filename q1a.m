function[output] = q1a(a, b)

d = [a ; b];

tol = 1.0e-06;
while(true)
    g = [8*a , -2*b ; 4*b*b - 1, 8*a*b];
    f = [4*a*a - b*b ; 4*a*b*b - a - 1];
    
    q = g\f;
    d = d - q;
    if(norm(q)<tol)
        break;
    end
    a = d(1, 1);
    b = d(2, 1);
end
output = d;
end