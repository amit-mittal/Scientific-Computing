function y=bisection(f, a, b, tol)

while(abs(f(a)-f(b)) > tol)

    c = (a+b)/2;
    if f(c) == 0
        break;
    elseif f(a)*f(c) < 0
        b = c;
    else
        a = c;
    end;
end

fprintf('The root is %f\n', c);