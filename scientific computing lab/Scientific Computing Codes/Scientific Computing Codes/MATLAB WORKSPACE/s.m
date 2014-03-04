function [f] = s(k,M,vector,output)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
syms z;
f=0;
hh=gethi(vector);
f= (((vector(k+1)-z)^3)*M(k) + ((z- vector(k))^3)*M(k+1))/(6*hh(k)) + ((vector(k+1)-z)*output(k) + (z-vector(k))*output(k+1))/hh(k) - (hh(k)/6)*((vector(k+1)-z)*M(k) + (z-vector(k))*M(k+1));

end

