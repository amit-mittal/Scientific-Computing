syms z;
vector=[0.30 0.32 0.34 0.36 0.38 0.40 0.42 0.44];
for k=1:length(vector)
    output(k)=sin(vector(k));
end
y0=cos(vector(1));
yn=cos(vector(length(vector)));

h=gethi(vector);
A=getA(h);
D=getD(output,h,y0,yn);
M=D*inv(A);
for k=1:length(h)-1
    ezplot(s(k,M,vector,output));
    hold on;
end
sin(0.3102)
answer=subs(s(1,M,vector,output),z,0.3102);
double(answer)
