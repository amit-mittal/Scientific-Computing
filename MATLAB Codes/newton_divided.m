function y=newton_divided()

%x = [0 0.1 0.3 0.6 1];
%f = [-6 -5.89483 -5.65014 -5.17788 -4.28172];

x = [0 -1 1];
f = [1 2 3];

A = zeros(length(x), length(x)+1);
A(1:length(x),1) = x;
A(1:length(x),2) = f;

for i=3:length(x)+1
    for j=1:(length(x)-i+2)
       A(j,i) = (A(j,i-1)-A(j+1,i-1))/(x(j)-x(j+i-2));
    end
end

syms X;

F = 1;
P = f(1);
for i=1:length(x)-1
    F = F*(X-x(i));
    P = P + F*A(1,i+2);
end

P