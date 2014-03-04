function [] = ShootingMethodB( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
F2= @(x,v,y)(x-y-(2)*v);
F1= @(v,y)(v);
X(1,1)= 0;
X(2,1)= -0.2;
h= 0.01; 
x(1)=0;
n= 100;
for j=1:n
    K1(1,1)=h*F1(X(2,j), X(1,j));
    K1(2,1)=h*F2(x(j), X(2,j), X(1,j));
    
    K2(1,1)=h*F1((X(2,j)+(h)/2),(X(1,j)+(K1(1,1))/2));
    K2(2,1)=h*F2((x(j)+(h)/2),(X(2,j)+(K1(2,1))/2), X(1,j));
    
    K3(1,1)=h*F1((X(2,j)+(h)/2),(X(1,j)+(K2(1,1))/2));
    K3(2,1)=h*F2((x(j)+(h)/2),(X(2,j)+(K2(2,1))/2), X(1,j));
    
    K4(1,1)=h*F1(X(2,j)+h,X(1,j)+K3(1,1));
    K4(2,1)=h*F2(x(j)+h,X(2,j)+K3(2,1), X(1,j));
    
    
    X(1,j+1)=X(1,j)+(1/6)*(K1(1,1)+2*K2(1,1)+2*K3(1,1)+K4(1,1));
    X(2,j+1)=X(2,j)+(1/6)*(K1(2,1)+2*K2(2,1)+2*K3(2,1)+K4(2,1));
    x(j+1)=x(1)+j*h;
    
end

plot(x,X(1,:), 'r');
end