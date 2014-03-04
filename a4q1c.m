function [] = a4q1c()
format long;
int = 0:0.1:1;
syms t;
f = t^4;

f_der = diff(f);

for p=1:10
    e(p) = 10^(-p);
end

for p=1:10
    h = e(p);
    for i=1:length(int)
        cd(i) = (subs(f_der, int(i)));
        %backward scheme
        bd1(i) = (subs(f, int(i)) - subs(f, int(i)-h))/h;
        %forward scheme
        bd2(i) = (subs(f, int(i)+h) - subs(f, int(i)))/h;
        %central scheme
        bd3(i) = (subs(f, int(i)+h) - subs(f, int(i)-h))/(2*h);
    end
    s1(p) = max(abs(bd1 - cd));%backward error
    s2(p) = max(abs(bd2 - cd));%forward error
    s3(p) = max(abs(bd3 - cd));%central error
end

e

loglog(e.^-1, s1, '-*r');
hold on;
loglog(e.^-1, s2, '-*b');
loglog(e.^-1, s3, '-*g');
hold off;

end