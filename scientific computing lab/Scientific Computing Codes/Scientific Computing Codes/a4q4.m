function[output]=a4q4()
x1=[0.0 0.6 1.2];
y1=cos(x1);
x2=[0.0 0.4 0.8 1.2];
y2=cos(x2);
f=0;
h=0;

syms t
for i=1:3
    g=y1(1,i);
    for j=1:3
        if(j~=i)
            g=g*(t-x1(1,j));
            g=g/(x1(1,i)-x1(1,j));
        end
    end
    f=f+g;
end

for i=1:4
    g=y2(1,i);
    for j=1:4
        if(j~=i)
            g=g*(t-x2(1,j));
            g=g/(x2(1,i)-x2(1,j));
        end
    end
    h=h+g;
end

f
h
v=0.0:0.1:1.2;
plot(v, subs(f,v))
hold on
plot(v,cos(v),'*r')
plot(v,subs(h,v),'g')
end

