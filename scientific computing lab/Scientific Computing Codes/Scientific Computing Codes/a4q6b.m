function[output]=a4q6b()
x=[0.0 0.1 0.3 0.6 1.0];
y=[-6.0000 -5.89483 -5.65014 -5.17788 -4.28172];

syms t
f=y(1,1);
temp=1;

for i=2:length(x)-1
    temp=temp*(t-x(1,i-1));
    f=f+temp*calculate(x,y,1,i);
end
v=-1:0.1:2;
plot(x,y,'*r')
hold on
plot(v,subs(f,v))
hold off
end
