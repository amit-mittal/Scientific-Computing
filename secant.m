function[output] = secant( a, b)
% f = @(x) x^2 -  8;
tol = 0.0001;

while(true)
 %   fprintf('f(%d): %d', a, f(a));
  %  fprintf(' f(%d): %d\n', b, f(b));

    c = a - ((f(a)*(a-b))/(f(a)-f(b)));
    if(abs(a-b)<tol)
        break;
    end
    
    if(f(a)*f(c)<0)
        b = c;
    elseif(f(b)*f(c)<0)
        a = c;
    elseif(f(a)==0)
        output = a;
        return;
    elseif(f(b)==0)
        output = b;
        return;
    else
        a = c;
    end
end
output = a + (b-a)/2;
end