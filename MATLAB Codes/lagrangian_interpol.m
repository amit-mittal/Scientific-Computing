function y=lagrangian_interpol()

exact = @(x) cos(x);
x_exact = 0:0.01:1.2;
x0 = 0:0.6:1.2;
syms x;
f = 1;

for i=1:length(x0)
    f = f*(x-x0(i));
end

for i=1:length(x0)
    l(i) = f/(x-x0(i));
    for j=1:length(x0)
        if i~=j
            l(i) = l(i)/(x0(i)-x0(j));
        end
    end
end

P=0;
for i=1:length(x0)
    P = P + (l(i)*exact(x0(i)));
end

for i=1:length(x0)
    Approx(i) = subs(P,x0(i));
end

figure(1);
h=plot(x_exact, exact(x_exact), 'g');
hold on;

plot(x0, Approx, 'r');
%ezplot(P,[0,1.2]);
hold off;

legend('exact', 'approx');
title('Plot of Approx and Exact vs. grid points - Interpolation');
grid on;
xlabel('X ------>');
ylabel('Y ------>');
%saveas(h,'test','jpg');
pretty(P)