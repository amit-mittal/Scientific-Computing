function y=integ_diff(t, v)

t = [0 1 2 3 4 5];
v = [2 4 8 4 0 -2];
len = length(t);
h = 1;
position=[];
position(1)=4;

for i=2:len
   position(i) = position(i-1) + (0.5*h*(v(i-1)+v(i)));
end

for i=1:len-1
    acceleration(i) = (v(i+1)-v(i))/(h);
end

acceleration(len) = (v(len)-v(len-1))/h;
position
acceleration

plot(t,position,'g');
hold on;

plot(t, acceleration, 'b');
hold on;

plot(t, v, 'r');
hold off;