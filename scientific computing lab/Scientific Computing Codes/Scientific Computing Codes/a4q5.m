function[output]=a4q5()
x=[1:8];
y=[11.6 16.2 16.8 13.5 7.3 4.2 11.4 15.8];
f=0;

syms t
for i=1:8
    g=y(1,i);
    for j=1:8
        if(j~=i)
            g=g*(t-x(1,j));
            g=g/(x(1,i)-x(1,j));
        end
    end
    f=f+g;
end
f
v=1:0.1:8;
plot(v, subs(f,v));
hold on
plot(x,y,'*r')
hold off
end
