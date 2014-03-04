function[] = hermite_2()
x = [0 3 5 8 13];
y = [0 225 383 623 993];
y_diff = [75 77 80 74 72];

syms t;
f = 0;

num = prod(t - x);
num_diff = diff(num);
for p = 1:length(x)
    g = num/(t - x(1, p));
    g = g/(subs(num_diff, x(1, p)));
    g_diff = diff(g);
    h1 = (1 - (2*subs(g_diff, x(1, p))*(t - x(1, p))))*(g*g);
    f = f + (y(1,p)*h1);
    
    h2 = (t - x(1, p))*(g*g);
    f = f + (y_diff(1,p)*h2);
end
subs(f, 10);
subs(diff(f), 10)

v = 0 : 0.001 : 13;
out = subs(f, v);
plot(v, out);
hold on;
plot(x, subs(f, x), '*r');
plot(10, subs(f, 10), '*g');
%plot(v, subs(diff(f), v), 'b')
[hh,i] = max(subs(diff(f), v))
v(i)
hold off;

pretty(f)

end
