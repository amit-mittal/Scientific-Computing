function[] = hermite()

format long;

x = [0.1 0.2 0.3 0.4];
y = [-0.62049958 -0.28398668 0.00660095 0.24842440];
y_diff = [3.58502082 3.14033271 2.66668043 2.16529366];

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
subs(f, 0.2013)

v = -1 : 0.01 : 1;
out = subs(f, v);
plot(v, out);
hold on;
plot(v, out, '*r');
hold off;
end