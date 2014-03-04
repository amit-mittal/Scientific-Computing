function [ ] = AdamsMoulton( a, b, N, maxit, tol)
h= (b-a)/N;
t= a:h:b;
f=@(t, y)(y+t);
for i=1:4
    y(i)= -1- t(i)+ (2/exp(-t(i)));
    exact(i)= -1- t(i)+ (2/exp(-t(i)));
    error(i)= abs(y(i)- exact(i));
    z(i, 1)= t(i);
    z(i, 2)= y(i);
    z(i, 3)= exact(i);
    z(i, 4)= error(i);
end

                                                                                                                                                                                                                                 
for i=4:N
    a= y(i)+ (h/24)*(55*f(t(i), y(i))- 59*f(t(i-1), y(i-1)) +37*f(t(i-2), y(i-2))- 9*f(t(i-3), y(i-3)));
    for j=1:maxit
        a_new= y(i)+ (h/24)*(9*f(t(i+1), a)+ 19*f(t(i), y(i)) -5*f(t(i-1), y(i-1))+ f(t(i-2), y(i-2)));
        if(abs(a_new-a)<tol)
            break;
        end
        a= a_new;
    end
    y(i+1)= a_new;
    exact(i+1)= -1- t(i+1)+ (2/exp(-t(i+1)));
    error(i+1)= abs(y(i+1)- exact(i+1));
    z(i+1, 1)= t(i+1);
    z(i+1, 2)= y(i+1);
    z(i+1, 3)= exact(i+1);
    z(i+1, 4)= error(i+1);
end
w1= '   ti         approx     exact      error';
w1
z
plot(y, '*r')
hold on
plot(exact, 'g')
hold on
plot(error, 'b')
hold off
end
