x=[0 3 5 8 13];
y=[0 225 383 623 993];
y1=[0 0 0 0 0];
n=size(x);
n(2);
h=-x(1:n(2)-1)+x(2:n(2))
syms z;
d=zeros(n(2),1);
a=zeros(n(2),n(2));
y1(1)=0;
y1(n(2))=0;
for i=1:n(2)
        if(i==1)
            a(1,1)=h(1)/3;
            a(1,2)=h(1)/6;
            d(i,1)=((y(2)-y(1))/h(1))-y1(1);
        elseif(i==n(2))
            a(n(2),n(2))=h(n(2)-1)/3;
            a(n(2),n(2)-1)=h(n(2)-1)/6;
            d(i,1)=y1(n(2))-(y(n(2))-y(n(2)-1))/h(n(2)-1);
        else
            a(i,i-1)=h(i-1)/6;
            a(i,i)=(h(i-1)+h(i))/3;
            a(i,i+1)=h(i)/6;
            d(i,1)=((y(i+1)-y(i))/h(i))-((y(i)-y(i-1))/h(i-1));
        end 
end
a
d
m=a\d
for i=1:n(2)-1
    if(10<x(i+1))
        if(10>=x(i))
            k=i;
            break;
        end;
    end
end
k;
%s=(((m(i,1)*(x(i+1)-z)^3)+(m(i+1,1)*(z-x(i))^3))/6/h(i))+(((y(i)*(x(i+1)-z))+(y(i+1)*(z-x(i))))/h(i))-(h(i)*((m(i,1)*(x(i+1)-z))+(m(i+1,1)*(z-x(i))))/6);
c1=(y(k)/h(k))-(h(k)*m(k,1)/6);
d1=(y(k+1)/h(k))-(h(k)*m(k+1,1)/6);
s=(((m(k,1)*(x(k+1)-z)*(x(k+1)-z)*(x(k+1)-z))+(m(k+1,1)*(x(k+1)-z)*(x(k+1)-z)*(x(k+1)-z)))/6/h(k))+(c1*(x(k+1)-z))+(d1*(z-x(k)));
s=expand(s);
distance=subs(s,z,10)