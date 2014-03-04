syms z;
vector=[0.1 0.2 0.3 0.4];
%for k=1:length(vector)
%    output(k)=sin(vector(k));
%end
output=[-0.62049958 -0.28398668 0.00660095 0.24842440];
y0=3.58502082;
yn=2.16529366;

h=gethi(vector);
A=getA(h);
D=getD(output,h,y0,yn);
M=D*inv(A);
%for k=1:length(h)-1
%    ezplot(s(k,M,vector,output));
%    hold on;
%end
answer=subs(s(1,M,vector,output),z,0.2013);
double(answer)