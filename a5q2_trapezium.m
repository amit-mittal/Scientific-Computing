function [] = a5q2_trapezium()
a = 0;
b = 1;
tol = 10^(-5);

n = 10^2;
h = (b-a)/n;
arr = a:h:b;
x(1) = 1;
y(1) = 1;
c(1) = 1;
z = (sin(arr) - cos(arr) + 3*(exp(-arr)))/2;

for i=1:n
    prev = x(i) + (h*( sin(arr(i)) - x(i) ));
    y(i+1) = y(i) + (h*( sin(arr(i)) - y(i) ));
    while(1)
        new = x(i) + (h*( sin(arr(i+1)) - prev ));
        if(abs(new-prev)<tol)
            break;
        end
        prev = new;
    end
    x(i+1) = new;
    c(i+1) = (x(i+1)+y(i+1))/2;
    fprintf('%g\t\t%g\t\t%g\t\t%g\n', arr(i), c(i+1), z(i+1), abs(z(i+1)-c(i+1)));
end

plot(arr, c, 'b');
hold on;
plot(arr, z, 'r');
hold off;
end