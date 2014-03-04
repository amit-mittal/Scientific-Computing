function [ A ] = ftcstwovar( a,b,c,d,N,M )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
deltat=(d-c)/M;
deltax=(b-a)/N;
t=c:deltat:d;
x=a:deltax:b;
lamda=deltat/((deltax)^2);
length(t);
length(x);
A=zeros(M+1,N+1);
A(1,1)=g(x(1));
for k=2:length(x)-1
    A(1,k)=g(x(k));
   % A(1,k)
end
A(1,N+1)=g(x(N+1));
for l=2:length(t)
    A(l,1)=f1(t(l));
    for k=2:length(x)-1
        A(l,k)=lamda*A(l-1,k-1) + (1-2*lamda)*A(l-1,k) + lamda*A(l-1,k+1);
    end
    A(l,N+1)=f2(t(l));
end
%A
set(gcf(), 'Renderer', 'painters')
surfc(A);
end

