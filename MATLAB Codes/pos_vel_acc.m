function y=pos_vel_acc()

t = [0 1 2 3 4 5];
v = [2 4 8 4 0 -2];
h=1;

for i=1:(length(t)-1)
    a(i) = (v(i+1)-v(i))/h;
end

a(length(t)) = (v(length(t))-v(length(t)-1))/h;

d(1) = 4;
distance =4;
for i=2:length(t)
    distance = distance+(0.5*h*(v(i)+v(i-1)));
    d(i) = distance;
end

figure(2);
plot(t,v,'g',t,a,'r',t,d,'b');
legend('velocity','acceleration','position');