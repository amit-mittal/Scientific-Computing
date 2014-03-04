function[output]=a4q1b(h)
int =0:0.1:1;
syms t;
f=t*t*exp(-t);

for i=1:length(int)
    bd(i)=(subs(f,int(i))-subs(f,int(i)-h))/h;
end
for i=1:length(int)
    fd(i)=(subs(f,int(i)+h)-subs(f,int(i)))/h;    
end
for i=1:length(int)
    cd(i)=(subs(f,int(i)+h)-subs(f,int(i)-h))/(2*h);
    
end
hold on
plot(int,fd,'r')
plot(int,cd,'k')
plot(int,bd,'g')
%plot(int,subs(diff(f),int))
hold off
end