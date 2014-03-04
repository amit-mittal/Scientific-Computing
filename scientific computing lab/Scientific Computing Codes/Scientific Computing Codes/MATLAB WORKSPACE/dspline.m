syms z;
vector=[0.30 0.32 0.34 0.36 0.38 0.40 0.42 0.44];
for k=1:length(vector)
    output(k)=sin(vector(k));
end

for k=1:length(vector)-1
    h(k)=vector(k+1)-vector(k);
end

M0=cos(vector(1));

A=zeros(length(vector)-1);
A(1,1)=1;
for k=1:length(vector)-2
    A(k+1,k)=1;
    A(k+1,k+1)=1;
end

D(1)=2*(output(2)-output(1))/h(1) - M0;
for k=2:length(vector)-1
    D(k)=2*(output(k+1)-output(k))/h(k);
end


tM=inv(A)*D';

tM=tM';
M(1)=M0;

for k=2:length(vector)
    M(k)=tM(k-1);
end

s=1;
%for k=1:length(vector)-1
%    s= (-((vector(k+1)-z)^2)*M(k) +((z-vector(k))^2)*M(k+1))/(2*(vector(k+1)-vector(k))) + output(k) + (h(k)*M(k))/2 ;
%    ezplot(s);
%    hold on;
%end

sin(0.33)
k=2;
s= (-((vector(k+1)-z)^2)*M(k) +((z-vector(k))^2)*M(k+1))/(2*(vector(k+1)-vector(k))) + output(k) + (h(k)*M(k))/2 ;
a=subs(s,z,0.33);
double(a)



    
