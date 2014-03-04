n=input('Enter number of values \n');
x=[];
y=[];
for i=1:n
    x(i)=input(sprintf('Enter x value for %dth iteration\n',i));
    y(i)=input(sprintf('Enter y value for %dth iteration\n',i));
end;
%xsample=input('Enter sample x\n');
p=1;
%x
%y
syms z;
for i=1:n
    p=p+(y(i)*interl(x,n,i));
end;
k=0;
c=[];
d=[];
while(input('Enter 0 if you want to put sample')==0)
    k=k+1;
    c(k)=input('Sampleplz....      ');
    d(k)=subs(p,z,c(k));
end;
if(k>0)
    plot(c,d);
end;