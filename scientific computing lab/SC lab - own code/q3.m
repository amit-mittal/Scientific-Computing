function [  ] = q3(f,g,t0,x0,h,i)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
t(1)=t0;
x(1)=x0;
for p= 1:3
    n(p)=10^p;
for j= 1:n(p)
    K1=h*f(t(j),x(j));
    K2=h*f(t(j)+(h/2),x(j)+(K1/2));
    K3=h*f(t(j)+(h/2),x(j)+(K2/2));
    K4=h*f(t(j)+h,x(j)+K3);
    x(j+1)=x(j)+(K1+2*K2+2*K3+K4)/6;
    t(j+1)=t(1)+j*h;
    z(j)=g(t(j));
    e(j)=z(j)-x(j);
end
z(n+1)=g(t(n(p)+1));
e(n+1)=z(n(p)+1)-x(n(p)+1);
err(p)=max(e);
end
%plot(t,x,'y');
%hold on;

%plot(t,z,'r');
%hold off;
plot(n,err);
end