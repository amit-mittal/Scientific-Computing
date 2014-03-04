function[output]=a4q2(a,b,c)
tol=10^(-6);
p=[a;b;c];
syms x y z;
f=[x^3-2*y-2;(x^3)-(5*(z^2))+7;(y*(z^2))-1]
g=[diff(f,x),diff(f,y),diff(f,z)]
while(1)
    A=subs(g,{x,y,z},p');
    b=subs(f,{x,y,z},p');
    q=A\b;
    p=p-q;
    if(norm(q)<tol)
        break;
    end
end
output=p;
end