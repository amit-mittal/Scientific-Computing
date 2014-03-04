function[output]=bisection(f,a,b)
%f= @(x)(x^2-6*x+8);
tol=10^(-3);
count=0;
while(1)
    if(f(a)*f(b)>0)
        disp('\nno output\n');
        output=-1;
        return;
    end
    mid = (a+b)/2;
    if(f(a)*f(mid)<0)
        b=mid;
    elseif(f(b)*f(mid)<0)
        a=mid;
    elseif(f(a)==0)
        output=a;
        return;
    elseif(f(b)==0)
        output=b;
        return;
    elseif(f(mid)==0)
        output=mid;
        return;
        
    end
    count = count+1;
        disp(count );
    if(abs(b-a)<tol)
        break;
        
    end
    output=a + (b-a)/2;
end

        