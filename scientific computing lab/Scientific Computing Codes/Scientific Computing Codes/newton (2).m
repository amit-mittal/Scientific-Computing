function[output]=newton(f,a)
%f= @(x)(x^2-6*x+8);
tol=10^(-6);
syms x;
g=diff(f(x));
while(1)
    b=a-(f(a)/subs(g,a));    
        if(abs(b-a)<tol)
            break;
        else
            a=b;
        end
    end
    output=b;
end