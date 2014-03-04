function [] = a5q2()
a = 0;
b = 1;
tol=10^(-5);

for p=1:3
    n = 10^p;
    power(p) = n;
    h = (b-a)/n;
    arr = a:h:b;
    x(1) = 1;
    z = (sin(arr) - cos(arr) + 3*(exp(-arr)))/2;
    
    for i=1:n
        temp = x(i) + (h*( sin(arr(i)) - x(i) ));
        x(i+1) = x(i) + (h*( sin(arr(i+1)) - temp ));
        while(x(i+1)-temp > tol)
            temp=x(i+1);
			x(i+1) = x(i) + (h*( sin(arr(i+1)) - temp ));
        end
    end
end
x
plot(arr,x,'r')
hold on
plot(arr,z)
%plot(power, m, 'b');
%hold on;
%loglog(power, m, 'b');
%plot(arr, z, 'r');
%hold off;
end