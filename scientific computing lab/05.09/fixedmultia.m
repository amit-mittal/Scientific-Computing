function[]=fixedmultia(n,tol1,tol2)
k=0;
x1=0;
x2=1;
for i=1:n
    if(i==1)
        x1ar(1)=x1;
        x2ar(1)=x2; 
        sprintf(' (%f,%f)\n',x1,x2)
    else
        %x2ar(i)=2*x1ar(i-1);
        %x1ar(i)=1/((4*x2ar(i)*x2ar(i))-1);
        x1ar(i)=x2ar(i-1)/2;
        x2ar(i)=((1+(1/x1ar(i)))^.5)/2;
        x1=x1ar(i);
        x2=x2ar(i);
        %sprintf(' (%f,%f)\n',x1,x2)
        if(norm(((x2ar(i)-x2ar(i-1))^2)+((x1ar(i)-x1ar(i-1))^2))<=tol1)
            k=1;
            break;
        elseif(norm(((x2ar(i)-x2ar(i-1))^2)+((x1ar(i)-x1ar(i-1))^2))>tol2)
            break;
        end;
    end;
end;
if(k==0)
    sprintf('No Solution.')
else
    sprintf('Solution: (%f,%f)',x1,x2)
    plot(x1ar,x2ar)
end;