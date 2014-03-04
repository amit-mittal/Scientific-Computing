function[y]=l(x,j)
n=size(x);
y=1;
syms z;
for i=1:n(2)
    if(i~=j)
        y=y*(z-x(i))/(x(j)-x(i));
    end
end
y=expand(y);