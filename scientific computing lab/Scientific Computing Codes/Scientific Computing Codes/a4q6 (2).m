function[output]=a4q6()
x=[0.0 0.1 0.3 0.6 1.0];
y=[-6.0000 -5.89483 -5.65014 -5.17788 -4.28172];
f=0;
a=1;

syms t
for i=1:5
    a=a*(t-x(1,i));
end
b=diff(a);
for i=1:5
    f=f+(a*y(1,i))/((t-x(1,i))*subs(b,x(1,i)));
end

f2=0;

for i=1:5
    g=y(1,i);
    for j=1:5
        if(j~=i)
            g=g*(t-x(1,j));
            g=g/(x(1,i)-x(1,j));
        end
    end
    f2=f2+g;
end
display(a);
b
f
f2
v=-1:0.09:2;
plot(v, subs(f,v));
hold on
plot(x,y,'*r')
%plot(v,subs(f2,v),'g')
hold off
end