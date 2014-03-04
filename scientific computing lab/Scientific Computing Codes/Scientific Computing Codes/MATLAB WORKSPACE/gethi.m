function [h] = gethi(vector)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
len = length(vector);
for k=1:len-1
    h(k)=vector(k+1)-vector(k);
end
end

