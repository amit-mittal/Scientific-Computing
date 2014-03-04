function [] = a5q2()
a = 0;
b = 1;
tol=10^(-5);

for p=1:1
    n = 10^p;
    power(p) = n;
    h = (b-a)/n;
    arr = a:h:b;
    y(1)=1;
    x(1) = 1;
    q(1)=1;
    z = (sin(arr) - cos(arr) + 3*(exp(-arr)))/2;
    
    for i=1:n
        y(i+1) = y(i) + (h*( sin(arr(i)) - y(i) ));
        temp=x(i) + (h*( sin(arr(i+1)) - x(i) ));
        x(i+1) = x(i) + (h*( sin(arr(i+1)) - temp ));
        while(x(i+1)-temp > tol)
            x(i+1) = x(i) + (h*( sin(arr(i+1)) - temp ));
            temp=x(i+1);
        end
        q(i+1)=(y(i+1)+x(i+1))/2;
    end
end
x
plot(arr,q,'r')
hold on
plot(arr,z)
%plot(power, m, 'b');
%hold on;
%loglog(power, m, 'b');
%plot(arr, z, 'r');
%hold off;
end