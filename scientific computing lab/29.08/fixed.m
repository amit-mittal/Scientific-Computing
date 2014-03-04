function[]=fixed(x0,tol1,tol2);% tol1,tol2=>tolerances x0=>initial guess
t1=min(tol1,tol2);
t2=max(tol1,tol2);
x=[];%iterate array
e=[];%residual array
k=0;%result bit
x(1)=x0;
i=2;
x(2)=g(x(1));
e(1)=abs(x(2)-x(1));
while(e(i-1)>t1)
    if(e(i-1)>t2)
        k=1;
        break;
    end;
    x(i+1)=g(x(i));%simulating newtton's method through fixed point
    e(i)=abs(x(i+1)-x(i));
    i=i+1;
end;
if(k>0.5)
    r='no solution through newton method with this initial value';
else
    r=x(i);
    fprintf('Total iterate number %d\nSolution %e\n',i,r)
end;