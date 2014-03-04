function y = runge_kutta_4(f, init, a, b, n)

C = [0.5, 0.5, 1];
A = [0.5 0 0; 0 0.5 0; 0 0 1];
W = [1/6 2/6 2/6 1/6];

%f = matlabFunction(f);

h = (b-a)/n;
t = a:h:b;

len = length(t);
y(1) = init;
k(1) = h*f(t(1), y(1));

R = 4;

for i=1:(len-1)
    
    for l = 2:R
        
        sum_AK = 0;
        sum_A = 0;
        
        for j=1:(l-1)
            sum_AK = sum_AK + (A(l-1,j)*k(j));
            sum_A = sum_A + (A(l-1,j)); %Use this to calculate C or just use the C array
        end
        k(l) = h*f(t(i) + h*sum_A, y(i) + sum_AK);
    end

    y(i+1) = y(i) + sum((W .* k));
end

%scatter(t, y, '-g');
%plot(t, y, 'r')
%hold on;

%{

syms t y;
f = sin(t) - y;
a = 0;
b = 1;
n = 10;
init = 1;

runge_kutta_4(f, init, a, b, n)
%}