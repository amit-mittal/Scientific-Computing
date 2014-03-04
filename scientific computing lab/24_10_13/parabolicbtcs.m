function [] = parabolicbtcs()
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
    A= zeros(M+1,M+1);
    R= zeros(M+1,1);
    for j=1:M+1
        if(j==1)
            A(1,1)=1;
            R(1)=0;
        else
            if(j==M+1)
                A(M+1,M+1)=1;
                R(M+1)=0;
            else
                A(j,j-1)= -h;
                A(j,j)= 1+2*h;
                A(j,j+1)= -h;
                R(j)= U(i-1,j);
            end
        end
        
    end
    U(i,:)=(A\R);
        
end
U
contour(U);
end