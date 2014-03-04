function [] = a5q2()
a = 0;
b = 1;

for p=1:4
    n = 10^p;
    power(p) = n;
    h = (b-a)/n;
    arr = a:h:b;
    y(1) = 1;
    z = (sin(arr) - cos(arr) + 3*(exp(-arr)))/2;
    
    for i=1:n
        y(i+1) = y(i) + (h*( sin(arr(i)) - y(i) ));
        fprintf('%g\t%g\t%g\t%g\n', arr(i), y(i+1), z(i+1), abs(z(i+1)-y(i+1)));
    end
    
    m(p) = max(abs(y-z));
    %fprintf('%d\t%g\n', n, m(p));
end

%plot(power, m, 'b');
%hold on;
loglog(power, m, 'b');
%plot(arr, z, 'r');
%hold off;
end