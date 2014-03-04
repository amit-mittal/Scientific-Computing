function[output]=fp1(a,p)
tol=10^(-6);
b=0.5*p+ 0.5*a/p;
while(abs(b-sqrt(a))>tol)
    p=b;
    b=0.5*p+ 0.5*a/p;
    fprintf('\nerror= %d\n',b-sqrt(a))
end
output=b;
end