function[] = q6a()

x = [0.0 0.1 0.3 0.6 1.0];
y = [-6.00000 -5.89483 -5.65014 -5.17788 -4.28172];

syms t;
temp = 1;
f = y(1, 1);

for p=2:length(x)
    temp = temp*(t-x(1, p-1));
    f = f + (temp)*calculate(x, y, 1, p);
end

v = -1:0.1:2.0;
plot(v, subs(f, v),'b');
hold on;
plot(x, y, '*r');
hold off;

end