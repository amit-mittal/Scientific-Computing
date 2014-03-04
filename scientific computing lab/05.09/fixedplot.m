function[]=fixedplot(a,n,tol1,tol2)
x(1)=a;
y(1)=0;
j=-1;
k=0;
m=0;
for i=2:n
    if(k==0)
        x(i)=x(i-1);
        y(i)=g(x(i));
    else
        y(i)=y(i-1);
        x(i)=y(i);
    end
    if(i>4)
       if((x(i)==x(i-4))&(y(i)==y(i-4)))
           j=i;
           break;
       end
    end
    if(abs(x(i)-x(i-1))>tol2)
        sprintf('diverges')
        break;
    end
    if((abs(x(i)-x(i-1))<=tol1)&(m==0))
        sprintf('converges at (%f,%f)',x(i),y(i))
        m=1;
    end
    k=rem(k+1,2);
end
if(j~=-1)
    sprintf('square with starting point (%f,%f)',x(j),y(j))
    sprintf('No solution')
end
%x1=min(x)-max(1,min(x)*.1):(max(x)-min(x))/10:max(x)+max(1,max(x)*.1);
x1=min(x):(max(x)-min(x))/10:max(x);
x2=g(x1);
x3=x1;
plot(x,y,x1,x2,x1,x3);
h=legend('stair','function','y=x',3,'Location','NorthEast');
grid on;