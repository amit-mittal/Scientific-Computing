function[]=bisec(a,b,tol,f);%a,b=>bounds tol=>tolerance
syms z;
c=min(a,b);
b=max(a,b);
a=c;
e=[];%residual array
d=[];%order array
i=1;
n=ceil(log2((b-a)/tol));
if(subs(f,z,a)*subs(f,z,b)<0)
    fprintf('i\t\ta(i)\t\tb(i)\t\tc\t\tresidual\tratio\n__________________________________________________________________________________________\n')
    while(i<=n)
        c=(a+b)/2;
        e(i)=abs(subs(f,z,c));
        j=i;
        if(i>1)
            d(i)=abs(e(i)/e(i-1));
        else
            d(1)=e(1);
        end;
        fprintf('%d\t\t%e\t%e\t%e\t%e\t%e\n',i-1,a,b,c,e(i),d(i))
        if((subs(f,z,c)==0)|((b-a)<2*tol))
            break;
        end;
        if(subs(f,z,a)*subs(f,z,c)<0)
            b=c;
        else
            a=c;
        end;
        i=i+1;
    end;
    fprintf('iterates required %d \nresidual for last iterate %e \nresidual ratio for last iterate %e\n',j-1,e(j),d(j))
    %figure(1);
    %loglog(e);
    %figure(2);
    %loglog(d);
    fprintf('solution %e\n',c)
else
    fprintf('no solution for this initial guess\n')
end;
