function[]=bisec(a,b,tol);%a,b=>bounds tol=>tolerance
c=min(a,b);
b=max(a,b);
a=c;
i=1;
n=ceil(log2((b-a)/tol));
if(f(a)*f(b)<0)
    while(i<=n)
        c=(a+b)/2;
        if((f(c)==0)|((b-a)<2*tol))
            break;
        end;
        if(f(a)*f(c)<0)
            b=c;
        else
            a=c;
        end;
        i=i+1;
    end;
    fprintf('solution %e\n',c)
else
    fprintf('no solution for this initial guess\n')
end;