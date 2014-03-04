function [ vector,exact,x ] = cetralsecond( a,b,alpha,beta,N )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
h=(b-a)/N;
x=a:h:b;
A=zeros(N-1,N-1);
R=zeros(N-1,1);

for k=2:N-2
    A(k,k-1)=(-1/h^2 - p(x(k))/(2*h));
    A(k,k)=(2/h^2 + q(x(k)));
    A(k,k+1)=(-1/h^2 + p(x(k))/(2*h));
    R(k)=r(x(k));
end

A(1,1)=2/h^2 + q(x(1));
A(1,2)=-1/h^2 + p(x(1))/(2*h);
R(1)=r(x(1)) - alpha*(-1/h^2 - p(x(k))/(2*h));
A(N-1,N-2)=-1/h^2 - p(x(N-1))/(2*h);
A(N-1,N-1)=2/h^2 + q(x(N-1));
R(N-1)=r(x(N-1)) - beta*(-1/h^2 + p(x(N-1))/(2*h));
u=A\R;
vector(1)=alpha;
vector(2:N)=u(1:N-1);
vector(N+1)=beta;
%exact=(x-2)+(x.*exp(1-x))+(2.*(1-x).*exp(-x));
exact=(1/sin(1)).*sin(x);
plot(x,exact,'go-');
hold on;
plot(x,vector,'r+-')
end

