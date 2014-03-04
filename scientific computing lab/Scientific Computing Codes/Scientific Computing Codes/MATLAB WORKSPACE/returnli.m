function [l] = returnli(xi,i)
%Returns the li as system variable after taking vector xi and i
%   Detailed explanation goes here
len = length(xi);
l=1;
syms z;
for k=1:len
    if k~=i
        l=(l*(z-xi(k)))/(xi(i)-xi(k));
    end
end
end

