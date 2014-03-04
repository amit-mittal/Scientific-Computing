function [D] = getD(y,h,y0,yn)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
len=length(h);
D(1)=(y(2)-y(1))/h(1) - y0;
for k=2:len
    D(k)=(y(k+1)-y(k))/h(k) - (y(k)-y(k-1))/h(k-1);
end
D(len+1)=yn - (y(len+1)-y(len))/h(len);
end

