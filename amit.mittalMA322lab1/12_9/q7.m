function[] = q7()

x = [0.5 1 2];
y = [0.479 0.841 0.909];

syms t;
temp = 1;
f = y(1, 1);

for p=2:length(x)
    temp = temp*(t-x(1, p-1));
    f = f + (temp)*calculate(x, y, 1, p);
end

v = 0:0.1:2.5;
plot(v, subs(f, v),'b');
hold on;
plot(x, y, '*r');
hold off;

display(subs(f, 0.8));
display(subs(f, 0.9));

end