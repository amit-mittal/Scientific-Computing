function[output]=a5q2()

x=[0 3 5 8 13]
y=[0 225 383 623 993]
y1=[75 77 80 74 72]

f=0;
syms t
p=t-x;
p=prod(p)
for i=1:length(x);
    g=p/(t-x(i));
    g=g/subs(diff(p),x(i));
    g1=diff(g);
    f=f+ (([1 - 2*subs(g1,x(i))*(t-x(i))]*[g*g])*y(i)) + ((t-x(i))*(g*g))*y1(i);
end

f
v=0:0.01:13;
plot(v,subs(f,v))
f1=diff(f);
for i= 0:0.1:13
    speed=subs(f1,i);
    if(speed*0.6818>55)
        speed*0.6818;
        time_when_exceeding_55=i;
        break;
    end
end
[max_speed,i] = max(subs(diff(f),v))
v(i)
hold on
position_at_10=subs(f,10)
speed_at_10=subs(diff(f),10)
plot(x,subs(f,x),'*r')
plot(10,subs(f,10))
hold off

time_when_exceeding_55
max_speed
position_at_10
speed_at_10

end