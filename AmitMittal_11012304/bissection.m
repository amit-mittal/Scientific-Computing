function[output] = bissection(f, a, b)
% f = @(x) x^2 -  8;
tol = 10^(-3);
count = 0;
while(abs(a-b)>tol)
    if(f(a)*f(b)>0)
        disp('No root found');
        output = -1;
        return;
    elseif(f(a)==0)
        output = a;
        return;
    elseif(f(b)==0)
        output = b;
        return;
    end
    
    mid = (a + ((b-a)/2));
    
    if(f(a)*f(mid)<0)
        b = mid;
    elseif(f(b)*f(mid)<0)
        a = mid;
    else
        output = mid;
        return;
    end
    count = count + 1;
    disp(count );
end
output = (a + ((b-a)/2));
end