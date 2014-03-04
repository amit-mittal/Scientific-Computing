function [] = eliptic()
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

f= 0;
k= 0.2;
h= 0.2;
x= 0:k:1;
t= 0:h:1;
U= zeros(6, 6);
for i=1:6
    U(i,1)= 0;
    U(i,6)=t(i);
end
for j=1:6
    U(1,j)=0;
    U(6,j)=x(i);
end
for i=2:6
    A= zeros(6,6);
    R= zeros(6,1);
    for j=1:6
        if(j==1)
            A(1,1)=1;
            R(1)=0;
        else
            if(j==6)
                A(M+1,M+1)=1;
                R(M+1)=0;
            else
                A(j,j-1)= -h;
                A(j,j)= 2*(1+h);
                A(j,j+1)= -h;
                R(j)= 2*(1-h)*U(i-1,j)+ h*U(i-1,j+1)+ h*U(i-1,j-1);
            end
        end
        
    end
    U(i,:)=(A\R);
        
end
U
contour(U);
end