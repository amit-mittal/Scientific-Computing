function [A] = getA(h)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
len=length(h);
for k=1:len+1
    for l=1:len+1
        A(k,l)=0;
    end
end

A(1,1)=h(1)/3;
A(1,2)=h(1)/6;


for k=2:len
    A(k,k-1)=h(k-1)/6;
    A(k,k)=(h(k-1)+h(k))/3;
    A(k,k+1)=h(k)/6;
end

A(len+1,len)=h(len)/6;
A(len+1,len+1)=h(len)/3;

end