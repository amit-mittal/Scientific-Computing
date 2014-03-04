function [ ] = Trapezium( a, b, N, in, maxit, tol, X )
h= (b-a)/N;
t= a:h:b;
f=@(t, y)(y+t);
y(1)=in;
exact(1)= 0;
for i=1:N
    a= y(i) + h*f(t(i), y(i));
    for j=1:maxit
        a_new= y(i)+ h*f(t(i), a);
        if(abs(a_new-a)<tol)
            break;
        end
        a= a_new;
    end
    y(i+1)= (h*f(t(i), y(i)))*X + (a_new)*(1-X) +y(i)*X ;
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