function[output]=secant(f,a,b)
tol=0.0001;
while(1)
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
    else a=c;
        
    end
    if(abs(b-a)<tol)
        break;
    end
    output=a+(b-a)/2;
end