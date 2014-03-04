function [ ] = AdamsBashforth( a, b, N)
h= (b-a)/N;
t= a:h:b;
f=@(t, y)(y+t);
for i=1:4
    y(i)= -1- t(i)+ (2/exp(-t(i)))
    exact(i)= -1- t(i)+ (2/exp(-t(i)));
    error(i)= abs(y(i)- exact(i));
    z(i, 1)= t(i);
    z(i, 2)= y(i);
    z(i, 3)= exact(i);
    z(i, 4)= error(i);
end

                                                                                                                                                                                                                                 
for i=4:N
    y(i+1)= y(i)+ (h/24)*(55*f(t(i), y(i))- 59*f(t(i-1), y(i-1)) +37*f(t(i-2), y(i-2))- 9*f(t(i-3), y(i-3)));
    exact(i)= -1- t(i)+ (2/exp(-t(i)));
    error(i)= abs(y(i)- exact(i));
    z(i+1, 1)= t(i);
    z(i+1, 2)= y(i);
    z(i+1, 3)= exact(i);
    z(i+1, 4)= error(i);
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
