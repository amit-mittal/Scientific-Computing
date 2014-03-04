function[output]=a4q3()
f=@(x)(reallog(1+x));

p=[0.02957206,-0.12895295,0.28249626,-0.48907554,0.99910735,0];

v=-0.1:0.1:1.1;
v1=f(v)
v2=polyval(p,v)

error=v1-v2

plot(v,v1,'*r')
hold on
plot(v,v2)
hold off
end




