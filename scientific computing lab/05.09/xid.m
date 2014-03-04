function[s]=xid(x,n,i);
s=1;
for j=1:n
    if(j~=i)
        s=s*(x(i)-x(j));
    end;
end;