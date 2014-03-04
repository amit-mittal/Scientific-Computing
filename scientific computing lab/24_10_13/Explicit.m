function [ ] = Explicit( a, b, N, in )
h= (b-a)/N;
t= a:h:b;
f=@(t, y)(y+t);
y(1)=in;
exact(1)= 0;
for i=1:N
    y(i+1)= y(i)+ h*f(t(i), y(i));
    exact(i)= -1- t(i)+ (2/exp(-t(i)));
    error(i)= abs(y(i)- exact(i));
    z(i, 1)= t(i);
    z(i, 2)= y(i);
    z(i, 3)= exact(i);
    z(i, 4)= error(i);
end
w1= '   ti         approx     exact      error';
w1
z
plot(y, 'r')
hold on
plot(exact, 'g')
hold on
plot(error, 'b')
hold off
end

