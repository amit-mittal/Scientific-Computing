function[] = q4b(a, b, inc)

syms t
x = a:inc:b;
z = 1/(1+(t*t));
y = subs(z, x); 

plot(x, subs(z, x), '-*r');

end