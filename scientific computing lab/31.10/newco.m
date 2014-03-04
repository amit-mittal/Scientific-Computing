function[w]=newco(a,b,n)
syms z;
x=zeros(1,n);
y=zeros(1,n);
for i=1:n
    x(i)=a+((i-1)*(b-a)/(n-1));
    y(i)=subs(f(),x(i));
end
w=inter(x,y);