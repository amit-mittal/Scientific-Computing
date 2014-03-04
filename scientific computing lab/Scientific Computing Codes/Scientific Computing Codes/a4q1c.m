function[output]=a4q1c()
format long;
int =0:0.1:1;
syms t;
f=exp(t);

for i=1:10
    c(i)=10^(-i);
end

for i=1:length(int)
    o(i)=subs(diff(f),int(i));
end

for j=1:10
    for i=1:length(int)
        bd(i)=(subs(f,int(i))-subs(f,int(i)-c(j)))/c(j);
    end
    for i=1:length(int)
        fd(i)=(subs(f,int(i)+c(j))-subs(f,int(i)))/c(j);
    end
    for i=1:length(int)
        cd(i)=(subs(f,int(i)+c(j))-subs(f,int(i)-c(j)))/(2*c(j));    
    end
    s1(j)=max(abs(bd-o));
    s2(j)=max(abs(fd-o));
    s3(j)=max(abs(cd-o));
end
c
s1
s2
s3
hold on
loglog(c.^-1,s1,'-*r')
loglog(c.^-1,s2,'-*b')
loglog(c.^-1,s3,'-*g')
hold off
end