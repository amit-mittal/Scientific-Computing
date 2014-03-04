function [ output_args ] = RangeKutta2( f,t0,x0,h,n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

x(1)=x0;
t(1)=t0;

for j=1:n
    K1=h*f(t(j),x(j));
    K2=h*f(t(j)+h,x(j)+K1);
    x(j+1)=x(j)+(1/2)*(K1+K2);
    t(j+1)=t(1)+j*h;
end
plot(t,x);


end
