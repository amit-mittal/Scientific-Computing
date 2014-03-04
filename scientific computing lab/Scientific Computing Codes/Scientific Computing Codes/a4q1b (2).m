function [] = a4q1b(h)

int = 0:0.1:1;
syms t;
f = t*t*exp(-t);

f_der = diff(f);
for i=1:length(int)
    cd(i) = (subs(f_der, int(i)));
    %backward scheme
    bd1(i) = (subs(f, int(i)) - subs(f, int(i)-h))/h;
    %forward scheme
    bd2(i) = (subs(f, int(i)+h) - subs(f, int(i)))/h;
    %central scheme
    bd3(i) = (subs(f, int(i)+h) - subs(f, int(i)-h))/(2*h);
end

plot(int, bd1, 'b');
hold on
plot(int, bd2, 'm');
plot(int, bd3, 'k');
plot(int, cd, 'r');
hold off;

end