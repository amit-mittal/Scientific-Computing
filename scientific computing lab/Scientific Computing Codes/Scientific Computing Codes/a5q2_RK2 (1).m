function [] = a5q2_RK2()
syms t y;
a=0;
b=1;
n=10^2;
h=(b-a)/n;
arr=a:h:b;

c2=1/2;
f=inline('sin(t)-y');
w1=1 - 1/(2*c2);
w2=1/(2*c2);
z = (sin(arr) - cos(arr) + 3*(exp(-arr)))/2;

y(1)=1;
for i=1:n
    k1=h*f(arr(i),y(i));
    k2=h*f(arr(i) + (h*c2), y(i) + (h*c2*k1) );
    y(i+1)=y(i) + (w1*k1) + (w2*k2);
end

plot(arr,y,'r')
hold on
plot(arr,z,'g')
hold off

end


    