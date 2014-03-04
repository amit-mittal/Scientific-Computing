function[ output]=bi(a,b)
f=@(x)exp(-x)-sin(x);
tol=0.00000001;
it=0;
c=(a+b)/2;
while(f(c)>tol)
    if(f(a)*f(b)<0)
        c=(a+b)/2;
        it=it+1;
        if(f(a)*f(c)<0)
            b=c;
        else
            a=c;
        end
    end
end
    output=c;
end
