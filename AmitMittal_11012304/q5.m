function[] = q5()

x = [1 2 3 4 5 6 7 8];
y = [11.6 16.2 16.8 13.5 7.3 4.2 11.4 15.8];

syms t
f = 0;

for p = 1:8
    g = y(1, p);
    for c = 1:8
        if(c~=p)
            g = g*(t - x(1, c));
            g = g/(x(1, p) - x(1, c));
        end
    end
    f = f + g;
end

v = 1:0.1:8;
plot(v, subs(f, v), 'b');
hold on
plot(x , y, '*r')
hold off

end