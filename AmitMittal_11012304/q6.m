function[] = q6()

x = [0.0 0.1 0.3 0.6 1.0];
y = [-6.00000 -5.89483 -5.65014 -5.17788 -4.28172];

syms t
psi = 1;

f = 0; 
for i = 1:5
    psi = psi*(t-x(1, i));
end

psid = diff(psi);

for i = 1:5
    f = f + (psi*y(1, i)/((t - x(1, i))*(subs(psid, x(1, i)))));
end

g = 0;
for p = 1:5
    q = y(1, p);
    for c = 1:5
        if(c~=p)
            q = q*(t - x(1, c));
            q = q/(x(1, p) - x(1, c));
        end
    end
    g = g + q;
end

v = -1.0:0.09:2.0;
%newton's plot
plot(v, subs(f, v), 'b');
hold on
%lagrange's plot
%plot(v, subs(g, v), 'g');
plot(x , y, '*r')
hold off

end