function [] = a5q2()
a = 0;
b = 1;

for p=1:5
    n = 10^p;
    power(p) = n;
    h = (b-a)/n;
    arr = a:h:b;
    y(1) = 1;
    z = (sin(arr) - cos(arr) + 3*(exp(-arr)))/2;
    
    for i=1:n
        y(i+1) = y(i) + (h*( sin(arr(i)) - y(i) ));
    end
    
    m(p) = max(abs(y-z));
end

%plot(power, m, 'b');
%hold on;
loglog(power, m, 'b');
%plot(arr, z, 'r');
hold off;
end