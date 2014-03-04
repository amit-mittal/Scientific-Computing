function y=derivative()

h = 0.1;
x = 0:h:1;
syms X;
f = exp(X);
g = exp(-X)*X^2;

fdiff = diff(f);
gdiff = diff(g);

f = matlabFunction(f);
g = matlabFunction(g);

yforward = (f(x+h)-f(x))/h;
yforward(length(x)) = (f(x(length(x)))-f(x(length(x)-1)))/h;
figure(1);
plot(x,yforward,'g');
hold on;
ezplot(fdiff,[0,1]);
hold off;
legend('approximation','theoretical');

ybackward = (f(x)-f(x-h))/h;
ybackward(1) = (f(x(2))-f(x(1)))/h;
figure(2);
plot(x,ybackward,'g');
hold on;
ezplot(fdiff,[0,1]);
hold off;
legend('approximation','theoretical');

ycentral = (f(x+h)-f(x-h))/(2*h);
ycentral(length(x)) = (f(x(length(x)))-f(x(length(x)-1)))/h;
ycentral(1) = (f(x(2))-f(x(1)))/h;
figure(3);
plot(x,ycentral,'g');
hold on;
ezplot(fdiff,[0,1]);
hold off;
legend('approximation','theoretical');