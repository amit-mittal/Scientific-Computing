function[output]=bisection(f,a,b)
%f= @(x)(x^2-6*x+8);
tol=0.01;
while(1)
    if(f(a)*f(b)>0)
        output=-1;
        return;
    end
    c = a-(f(a)*(a-b))/(f(a)-f(b));
    if(f(a)*f(c)<0)
        b=c;
    elseif(f(b)*f(c)<0)
        a=c;
    elseif(f(a)==0)
                output=a;
                return;
    elseif(f(b)==0)
                output=b;
                return;
    %elseif(f(c)==0)
     %           output=c;
      %          return;
    
    end
    if(abs(b-a)<tol)
            break;
    end
    output=(a+b)/2;
end