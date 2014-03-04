function[] = q4a(a, b, inc)

syms t
x = a:inc:b;
z = 1/(1+(t*t));
y = subs(z, x); 

f = 0;
length(x)
for p = 1:length(x)
    g = y(1, p);
    for c = 1:length(x)
        if(c~=p)
            g = g*(t - x(1, c));
            g = g/(x(1, p) - x(1, c));
        end
    end
    f = f + g;
end

v = a:0.2:b;
plot(v, subs(f, v), 'b');
hold on;
plot(v, subs(z, v), '*r');
hold off;

end