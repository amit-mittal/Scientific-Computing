function [] = a5q2_implicit()
a = 0;
b = 1;
tol = 10^(-5);

n = 10^3;
h = (b-a)/n;
arr = a:h:b;
x(1) = 1;
z = (sin(arr) - cos(arr) + 3*(exp(-arr)))/2;

for i=1:n
    prev = x(i) + (h*( sin(arr(i)) - x(i) ));
    while(1)
        new = x(i) + (h*( sin(arr(i+1)) - prev ));
        if(abs(new-prev)<tol)
            break;
        end
        prev = new;
    end
    x(i+1) = new;
end
x

plot(arr, x, 'b');
hold on;
plot(arr, z, 'r');
hold off;
end