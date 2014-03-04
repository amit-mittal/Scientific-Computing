function [ output_args ] = RangeKutta4( f,t0,x0,h,n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

x(1)=x0;
t(1)=t0;

for j=1:n
    K1=h*f(t(j),x(j));
    K2=h*f((t(j)+(h)/2),(x(j)+(K1)/2));
    K3=h*f((t(j)+(h)/2),(x(j)+(K2)/2));
    K4=h*f(t(j)+h,x(j)+K3);
    x(j+1)=x(j)+(1/6)*(K1+2*K2+2*K3+K4);
    t(j+1)=t(1)+j*h;
end
plot(t,x);


end
