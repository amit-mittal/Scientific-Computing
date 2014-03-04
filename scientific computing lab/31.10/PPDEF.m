function[e]=PPDEF(M,N,T)
%SCHIMDT
U=zeros(M+1,N+1);
x=0:(1/N):1;
t=0:(T/M):T;
U(:,1)=0;
U(:,N+1)=0;
for i=1:N+1
    %U(1,i)=x(i)*(1-x(i))*exp(x(i));
    U(1,i)=sin(pi*x(i));
end
l=T*N*N/M;
for i=1:M
   for j=2:N
       U(i+1,j)=(l*U(i,j+1))-((l+l-1)*U(i,j))+(l*U(i,j-1));
   end
end
for i=1:M+1
   for j=1:N+1
       U1(i,j)=exp(-pi*pi*t(i))*sin(pi*x(j));
       er(i,j)=abs(U(i,j)-U1(i,j));
   end
end
e=max(er);
%x
%t
%figure(ceil(rand(1)*9999999));
%contour(U);
%display(U);
figure(ceil(rand(1)*9999999));
surfc(U);
figure(ceil(rand(1)*9999999));
surfc(U1);
figure(ceil(rand(1)*9999999));
surfc(er);