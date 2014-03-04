function y=hermite()

x0 = 0.1:0.1:0.4;
f = [-0.62049958 -0.28398668 0.00660095 0.24842440];
fdiff = [3.58502082 3.14033271 2.66668043 2.16529366];

syms x;
F = 1;

for i=1:length(x0)
    F = F*(x-x0(i));
end

for i=1:length(x0)
    l(i) = F/(x-x0(i));
    for j=1:length(x0)
        if i~=j
            l(i) = l(i)/(x0(i)-x0(j));
        end
    end
end

for i=1:length(x0)
    H(i) = (x-x0(i))*(l(i)^2);
    h(i) = (1-(2*subs(diff(l(i)),x0(i))*(x-x0(i))))*(l(i)^2);
end

P=0;
for i=1:length(x0)
    P = P + (f(i)*h(i)) + (fdiff(i)*H(i));
end

eval(subs(P,0.2013))
pretty(expand(P))