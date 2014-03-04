function[output]=newton_nl(a,b)
tol=10^(-6);
p=[a;b];
syms x y
f=[4*x^2-y^2;4*x*y^2- x-1];
g=[8*x,(-2)*y;4*y^2-1,8*x*y];
while(1)
    A=subs(g,{x,y},p');
    b=subs(f,{x,y},p');
    q=A\b;
    p=p-q;
    if(norm(q)<tol)
        break;
    end
end
output=p;
end