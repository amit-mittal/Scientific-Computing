function[] = q4()

x = [0.0 0.6 1.2];
y = cos(x);

syms t
f = 0;

for p = 1:3
    g = y(1, p);
    for c = 1:3
        if(c~=p)
            g = g*(t - x(1, c));
            g = g/(x(1, p) - x(1, c));
        end
    end
    f = f + g;
end

x = [0.0 0.4 0.8 1.2];
y = cos(x);

a = 0;

for p = 1:4
    g = y(1, p);
    for c = 1:4
        if(c~=p)
            g = g*(t - x(1, c));
            g = g/(x(1, p) - x(1, c));
        end
    end
    a = a + g;
end

v = 0.0:0.1:1.2;
plot(v, subs(f, v), 'b');
hold on;
plot(v, subs(a, v), 'm');
plot(v, cos(v), '*r');
hold off;

end