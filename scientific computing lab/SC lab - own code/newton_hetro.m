function[output] = newton_hetro(a, b)

d = [a ; b]

tol = 1.0e-04;
count = 0;
while(count<2)
    g = [4*a , -2*b ; 4*b*b - 1, 8*a*b];
    f = [4*a*a - b*b ; 4*a*b*b - a];
    
    q = g\f;
    d = d - q;
    if(norm(q)<tol)
        break;
    end
    a = d(1, 1);
    b = d(2, 1);
    
    disp(d)
    disp(a)
    disp(b)
    
    pause;
end
output = d;
end