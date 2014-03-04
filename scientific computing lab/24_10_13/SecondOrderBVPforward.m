function [] = SecondOrderBVPforward()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

r= @(x)(exp(x));
q= @(x)(cos(x));
p= @(x)(-(x+1));

h= [0.1, 0.05, 0.025, 0.0125]; 

y(1)= 1;
for i=1:1   
    n= 1/h(i) ;
    x= 0:h(i):1;
    A(1, 1)=(h(i)*p(x(2))- h(i)*h(i)*q(x(2))-2);
    A(1, 2)=(1- h(i)*p(x(2)));
    R(1)= -y(1)+ h(i)*h(i)*r(x(2));
    for j=3:n-1
    A(j-1, j-2)= 1; 
    A(j-1, j-1)= (h(i)*p(x(j))- h(i)*h(i)*q(x(j))-2);
    A(j-1, j)= (1- h(i)*p(x(j)));
    R(j-1)= h(i)*h(i)*r(x(j));
    end
    A(n-1, n-2)=1;
    A(n-1, n-1)=(h(i)*p(x(n))- h(i)*h(i)*q(x(n))-2);
    R(n-1)= -3*(1- h(i)*p(x(n)))+ h(i)*h(i)*r(x(n));
    A
    R
    u= A\R';
    u
    x
    hold on
    plot(x(2:end-1), u, 'r');
end
hold off
end
