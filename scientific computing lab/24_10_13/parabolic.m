function [] = parabolic()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

f= @(x)(x-x*x)*exp(x);
M= 50;
N= 20;
x= 0:1/M:1;
t= 0:1/N:1;
h=(1/N)/((1/M)*(1/M));
U= zeros(N+1, M+1);
for i=1:M+1
    U(1,i)= f(x(i));
end
for j=1:N+1
    U(j,1)=0;
    U(j,M+1)=0;
end
for i=2:N+1
    for j=2:M
        U(i, j)= h*U(i-1,j+1)- (2*h -1)*U(i-1, j) + h*U(i-1, j-1);
    end
end
U
contour(U);
end
