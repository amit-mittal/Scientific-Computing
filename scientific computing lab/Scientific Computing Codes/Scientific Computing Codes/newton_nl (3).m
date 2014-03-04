function[output]=newton_nl(a,b)
tol=10^(-6);
p=[a;b];
syms x y
f=[(x*y*y)+(x*x*y)+(x*x*x*x)-3;(((x^3)*(y^5))-2*(x^5)*y - (x^2)+2)]
g=[diff(f,x),diff(f,y)]
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