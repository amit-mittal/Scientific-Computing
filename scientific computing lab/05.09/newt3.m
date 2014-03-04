function[]=newt3(x0,tol1,tol2,n);
t1=min(tol1,tol2);
t2=max(tol1,tol2);
k=0;
x=x0;
i=2;
x;
dif3(x)\f3(x);
x=x-(dif3(x)\f3(x));
y=x+min(x,-x);
er(1)=norm(x-y);
while((er(i-1)>t1)&(i<=n))
    if(er(i-1)>t2)
        k=1;
        break;
    end;
    x=x-(dif3(x)\f3(x));
    er(i)=norm(x-y);
    y=x;
    i=i+1;
end;
if(k>0.5)
    fprintf('no solution through newton method with this initial value\n')
else
    r=x;
    fprintf('\nTotal iterate number %d\nSolution [%e : %e : %e]\n',i,x(1),x(2),x(3))
    dif3(x)\f3(x)           %check if it is zero
end;