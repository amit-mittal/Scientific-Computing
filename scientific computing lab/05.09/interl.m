function[l]=interl(x,n,i);
l=1;
syms z;
for j=1:n
    if(i~=j)
        l=l*(z-x(j))/(x(i)-x(j));
    end;
end;